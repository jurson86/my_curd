package com.hxkj.sys.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.hxkj.common.controller.BaseController;
import com.hxkj.common.util.codegenerator.Table;
import com.hxkj.common.util.codegenerator.TableMetaUtils;
import com.hxkj.sys.service.CodeGeneratorService;
import com.jfinal.kit.LogKit;
import com.jfinal.kit.Ret;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.DbKit;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * 代码生成器控制器
 */
public class SysGeneratorController extends BaseController {

    private static final TableMetaUtils schemaInfoUtil = new TableMetaUtils(DbKit.getConfig().getDialect(), DbKit.getConfig().getDataSource());

    public void index() {
        render("sys/sysGenerator.html");
    }

    /**
     * 数据库表数据
     */
    public void query() {
        // 是否 查询 完整的表信息 (包含列信息)
        Boolean columnFlag = getParaToBoolean("fullFlag");
        if (columnFlag == null) {
            columnFlag = false;
        }
        List<Table> tables = schemaInfoUtil.getAllTableInfo(columnFlag);
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
            List<String> outputPaths = CodeGeneratorService.generate(moduleName, tables);
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
