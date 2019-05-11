package com.github.qinyou.system.controller;

import cn.afterturn.easypoi.excel.ExcelExportUtil;
import cn.afterturn.easypoi.excel.entity.ExportParams;
import com.github.qinyou.common.annotation.RequireButtonCode;
import com.github.qinyou.common.annotation.RequireMenuCode;
import com.github.qinyou.common.base.BaseController;
import com.github.qinyou.common.config.Constant;
import com.github.qinyou.common.interceptor.SearchSql;
import com.github.qinyou.common.render.ExcelRender;
import com.github.qinyou.common.validator.IdsRequired;
import com.github.qinyou.system.model.SysServiceLog;
import com.jfinal.aop.Before;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import org.apache.poi.ss.usermodel.Workbook;

import java.util.List;

/**
 * 业务日志
 */
@RequireMenuCode("sysServiceLog")
public class SysServiceLogController extends BaseController {
    public void index() {
        render("system/sysServiceLog.ftl");
    }


    @Before(SearchSql.class)
    public void query() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);
        Page<SysServiceLog> sysServiceLogPage = SysServiceLog.dao.page(pageNumber, pageSize, where);
        renderDatagrid(sysServiceLogPage);
    }


    @Before(IdsRequired.class)
    @RequireButtonCode("sysServiceLog:delete")
    public void deleteAction() {
        String ids = getPara("ids").replaceAll(",", "','");
        String sql = "delete from sys_service_log where  id in ('" + ids + "')";
        Db.update(sql);
        renderSuccess(Constant.DELETE_SUCCESS);
    }

    /**
     * 导出excel
     */
    @Before(SearchSql.class)
    @RequireButtonCode("sysServiceLog:export")
    public void exportExcel() {
        String where = getAttr(Constant.SEARCH_SQL);
        if (SysServiceLog.dao.findCountByWhere(where) > 5000) {
            setAttr("msg", "导出数据不要大于 5k，请修改查询条件。");
            render("common/card.ftl");
            return;
        }
        List<SysServiceLog> list = SysServiceLog.dao.findByWhere(where);
        Workbook workbook = ExcelExportUtil.exportExcel(new ExportParams("业务日志", "业务日志"), SysServiceLog.class, list);
        render(ExcelRender.me(workbook).fileName("业务日志.xls"));
    }
}
