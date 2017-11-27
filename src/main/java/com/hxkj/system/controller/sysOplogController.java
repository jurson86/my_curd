package com.hxkj.system.controller;


import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.SearchSql;
import com.hxkj.common.util.ToolString;
import com.hxkj.common.util.csv.CsvRender;
import com.hxkj.common.util.excel.PoiRender;
import com.hxkj.system.model.SysOplog;
import com.jfinal.aop.Before;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.tx.Tx;
import org.apache.log4j.Logger;

import java.util.*;

public class sysOplogController extends BaseController {

    private final static Logger LOGGER = Logger.getLogger(sysOplogController.class);

    public void index() {
        render("system/sysOplog.html");
    }

    @Before(SearchSql.class)
    public void query() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);

        String sqlSelect = " select so.*, su.name as user_name ";
        String sqlExceptSelect = " from sys_oplog  so LEFT JOIN sys_user  su on so.user_id = su.id  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }

        sqlExceptSelect += " order by so.create_time desc ";

        Page<SysOplog> sysOplogPage = SysOplog.dao.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);

        renderDatagrid(sysOplogPage);
    }


    /**
     * 导出Excel
     */
    @Before(SearchSql.class)
    public void exportToExcel() {
        String where = getAttr(Constant.SEARCH_SQL);

        String sqlSelect = " select so.*, su.name as user_name ";
        String sqlExceptSelect = " from sys_oplog  so LEFT JOIN sys_user  su on so.user_id = su.id  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }

        sqlExceptSelect += "order by so.create_time desc";
        List<SysOplog> sysOplogs = SysOplog.dao.find(sqlSelect + sqlExceptSelect);

        List<Map<String, Object>> maps = new ArrayList<Map<String, Object>>();
        for (SysOplog sysOplog : sysOplogs) {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("user_name", sysOplog.getUsername());
            map.put("op_content", sysOplog.getOpContent());
            map.put("ip", sysOplog.getIp());
            map.put("create_time", sysOplog.getCreateTime());
            maps.add(map);
        }

        String[] columns = new String[]{"user_name", "op_content", "ip", "create_time"};
        String[] headers = new String[]{"操作人", "日志内容", "IP地址", "操作时间"};

        render(PoiRender.me(sysOplogs).fileName(ToolString.toUtf8String("操作日志.xls")).sheetName("操作日志统计").columns(columns).headers(headers).cellWidth(3500).headerRow(1));


    }

    @Before(SearchSql.class)
    public void exportToCvs() {
        String where = getAttr(Constant.SEARCH_SQL);

        String sqlSelect = " select so.*, su.name as user_name ";
        String sqlExceptSelect = " from sys_oplog  so LEFT JOIN sys_user  su on so.user_id = su.id  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }

        sqlExceptSelect += "order by so.create_time desc";
        List<SysOplog> sysOplogs = SysOplog.dao.find(sqlSelect + sqlExceptSelect);
        List<String> headers = Arrays.asList("操作人员", "日志内容", "IP地址", "操作时间");
        List<String> columns = Arrays.asList("user_name", "op_content", "ip", "create_time");
        CsvRender csvRender = new CsvRender(headers, sysOplogs);
        csvRender.fileName("oplog.csv");
        csvRender.clomuns(columns);
        render(csvRender);

    }


    @Before(Tx.class)
    public void deleteAction() {
        String ids = getPara("ids");
        ids = "'" + ids.replace(",", "','") + "'";
        String deleteSql = "delete from sys_oplog where id  in ( " + ids + " ) ";
        Integer updateNum = Db.update(deleteSql);
        if (updateNum != 0) {
            renderText(Constant.DELETE_SUCCESS);
        } else {
            renderText(Constant.DELETE_FAIL);
        }
    }
}
