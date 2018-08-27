package com.hxkj.sys.controller;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.controller.BaseController;
import com.hxkj.common.util.StringUtils;
import com.hxkj.common.util.csv.CsvRender;
import com.hxkj.common.util.excel.PoiRender;
import com.hxkj.common.util.search.SearchSql;
import com.hxkj.sys.model.SysOplog;
import com.jfinal.aop.Before;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.tx.Tx;

import java.util.Arrays;
import java.util.List;

/**
 * 操作日志
 */
public class sysOplogController extends BaseController {


    public void index() {
        render("sys/sysOplog.html");
    }

    @Before(SearchSql.class)
    public void query() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);
        Page<SysOplog> sysOplogPage = SysOplog.dao.page(pageNumber, pageSize, where);
        renderDatagrid(sysOplogPage);
    }


    /**
     * 导出Excel
     */
    @Before(SearchSql.class)
    public void exportToExcel() {
        String where = getAttr(Constant.SEARCH_SQL);
        List<SysOplog> sysOplogs = SysOplog.dao.findWhere(where);
        String[] columns = new String[]{"user_name", "op_content", "ip", "create_time"};
        String[] headers = new String[]{"操作人", "日志内容", "IP地址", "操作时间"};

        render(PoiRender.me(sysOplogs)
                .fileName(StringUtils.urlEncode("操作日志.xls"))
                .sheetName("操作日志统计")
                .columns(columns)
                .headers(headers)
                .cellWidth(3500)
                .headerRow(1));
    }

    @Before(SearchSql.class)
    public void exportToCvs() {
        String where = getAttr(Constant.SEARCH_SQL);
        List<SysOplog> sysOplogs = SysOplog.dao.findWhere(where);
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
        if (ids.contains(",")) {
            ids = "'" + ids.replace(",", "','") + "'";
            String deleteSql = "delete from sys_oplog where id  in ( " + ids + " ) ";
            Db.update(deleteSql);
        } else {
            SysOplog.dao.deleteById(ids);
        }
        renderText(Constant.DELETE_SUCCESS);
    }

}
