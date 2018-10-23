package com.hxkj.sys.controller;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.controller.BaseController;
import com.hxkj.common.util.DateTimeUtils;
import com.hxkj.common.util.csv.CsvRender;
import com.hxkj.common.util.excel.PoiRender;
import com.hxkj.common.util.search.SearchSql;
import com.hxkj.sys.model.SysOplog;
import com.hxkj.sys.service.SysNotificationService;
import com.jfinal.aop.Before;
import com.jfinal.aop.Duang;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.tx.Tx;
import org.apache.log4j.Logger;

import java.util.*;

/**
 * 操作日志
 */
public class SysOplogController extends BaseController {

    private final static Logger LOG = Logger.getLogger(SysOplogController.class);


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

        render(PoiRender.me(sysOplogs)  // 数据
                .fileName("操作日志.xls") //导出文件名称
                .sheetName("操作日志统计") // sheet 名称
                .columns(columns) // 标题栏 对应数据
                .headers(headers) // 标题栏 对应excel
                .cellWidth(5000)  // 单元格宽度
                .dateFormat("yyyy/MM/dd HH:mm:ss")  //日期格式
                .headerRow(2));   //标题栏占几行
    }

    @Before(SearchSql.class)
    public void exportToCvs() {
        String where = getAttr(Constant.SEARCH_SQL);
        List<SysOplog> sysOplogs = SysOplog.dao.findWhere(where);
        List<String> headers = Arrays.asList("操作人员", "日志内容", "IP地址", "操作时间");
        List<String> columns = Arrays.asList("user_name", "op_content", "ip", "create_time");
        render(CsvRender.me(headers, sysOplogs).fileName("操作日志.csv").columns(columns).dateFormat("yyyy-MM-dd HH:mm:ss"));

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

        // 发送消息通知 （业务并不合适,仅测试用)
        // 此处 sys_notification_type 表数据耦合，不应该 改表数据
        String sysNotificationTypeCode = "00002";
        Map<String, Object> templateParams = new HashMap<>();
        templateParams.put("user", getSessionUser().getUsername()); // 操作人
        templateParams.put("date", DateTimeUtils.format(new Date(), DateTimeUtils.pattern_ymd_hms));// 时间
        templateParams.put("number", getPara("ids").split(",").length); // 删除记录条数
        SysNotificationService service = Duang.duang(SysNotificationService.class);
        service.sendNotification(sysNotificationTypeCode, templateParams);


        renderText(Constant.DELETE_SUCCESS);
    }

}
