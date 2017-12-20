package com.hxkj.system.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.code_generator.SchemaInfoUtil;
import com.hxkj.common.util.code_generator.Table;
import com.hxkj.system.service.CodeGeneratorService;
import com.jfinal.kit.LogKit;
import com.jfinal.kit.Ret;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Config;
import com.jfinal.plugin.activerecord.DbKit;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SysGeneratorController extends BaseController {

    public static SchemaInfoUtil schemaInfoUtil;

    static {
        Config config = DbKit.getConfig();
        schemaInfoUtil = new SchemaInfoUtil(config.getDialect(), config.getDataSource());
    }

    public void index() {
        render("system/sysGenerator.html");
    }

    /**
     * 数据库表数据
     */
    public void query() {
        Boolean fullFlag = getParaToBoolean("fullFlag");
        if (fullFlag == null) {
            fullFlag = false;
        }
        List<Table> tables = schemaInfoUtil.getAllTableInfo(fullFlag);
        renderJson(JSON.toJSONString(tables));
    }


    /**
     * 生成代码 文件
     */
    public void generate() {
        Ret ret = Ret.create();
        String jsonStr = getPara("jsonStr");
        if (StrKit.isBlank(jsonStr)) {
            ret.setFail();
            ret.set("msg", "jsonStr参数不能为空");
            renderJson(ret);
            return;
        }
        try {
            JSONObject jsonObject = JSON.parseObject(jsonStr, JSONObject.class);
            String moduleName = jsonObject.getString("moduleName");
            if (moduleName.contains(":)")) {
                ret.setFail();
                ret.set("msg", "jsonStr 中 moduleName 不合法");
                renderJson(ret);
                return;
            }

            JSONArray jsonArray = jsonObject.getJSONArray("tables");

            Iterator<Object> it = jsonArray.iterator();
            List<Table> tables = new ArrayList<Table>();
            while (it.hasNext()) {
                JSONObject jsonObjectTemp = (JSONObject) it.next();
                Table table = jsonObjectTemp.toJavaObject(Table.class);
                tables.add(table);
            }

            CodeGeneratorService codeGeneratorService = new CodeGeneratorService();
            List<String> outputPaths = codeGeneratorService.generate(moduleName, tables);
            ret.setOk();
            ret.put("outputPaths", outputPaths);
            renderJson(ret);
        } catch (Exception e) {
            LogKit.error(e.getMessage());
            ret.setFail();
            ret.set("msg", "系统发生异常。");
            renderJson(ret);
        }

    }
}
