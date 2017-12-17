package com.hxkj.system.controller;

import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.ToolFormatJson;
import com.hxkj.common.util.code_generator.SchemaInfoUtil;
import com.hxkj.common.util.code_generator.Table;
import com.jfinal.kit.JsonKit;
import com.jfinal.plugin.activerecord.Config;
import com.jfinal.plugin.activerecord.DbKit;

import java.util.List;

public class SysGeneratorController extends BaseController {

    public static SchemaInfoUtil schemaInfoUtil;

    static {
        Config config = DbKit.getConfig();
        schemaInfoUtil = new SchemaInfoUtil(config.getDialect(), config.getDataSource());
    }

    /**
     * 网格视图
     */
    public void index() {
        render("system/sysGenerator.html");
    }

    public void query() {
        Boolean fullFlag = getParaToBoolean("fullFlag");
        if (fullFlag == null) {
            fullFlag = false;
        }
        List<Table> tables = schemaInfoUtil.getAllTableInfo(fullFlag);
        renderJson(tables);
    }

    /**
     * json 视图
     */
    public void index_json() {
        Boolean fullFlag = getParaToBoolean("fullFlag");
        if (fullFlag == null) {
            fullFlag = false;
        }
        List<Table> tables = schemaInfoUtil.getAllTableInfo(fullFlag);
        String formatJSONStr = ToolFormatJson.format(JsonKit.toJson(tables));
        renderJson(formatJSONStr);
    }
}
