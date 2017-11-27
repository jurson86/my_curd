package com.hxkj.system.controller;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.SearchSql;
import com.hxkj.common.util.csv.CsvRender;
import com.hxkj.system.model.SysTask;
import com.jfinal.aop.Before;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

import java.util.Arrays;
import java.util.List;

public class SysTaskController extends BaseController {

    public void index() {
        render("system/sysTask.html");
    }


    @Before(SearchSql.class)
    public void query() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);

        String sqlSelect = "SELECT s.*";
        String sqlExceptSelect = " FROM " +
                "( SELECT st.*, " +
                "( SELECT sd.dict_value FROM sys_dict sd WHERE sd.dict_key = st.target_type AND sd.dict_type = 'task_type' ) AS task_type, " +
                "( SELECT sd.dict_value FROM sys_dict sd WHERE sd.dict_key = st. STATUS AND sd.dict_type = 'task_statu' ) AS task_status" +
                " FROM sys_task st ) s ";

        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where = " + where;
        }

        //SELECT s.* FROM ( SELECT st.*, ( SELECT sd.dict_value FROM sys_dict sd WHERE sd.dict_key = st.target_type AND sd.dict_type = 'task_type' ) AS task_type, ( SELECT sd.dict_value FROM sys_dict sd WHERE sd.dict_key = st. STATUS AND sd.dict_type = 'task_statu' ) AS task_status FROM sys_task st ) s

        Page<SysTask> sysTaskPage = SysTask.dao.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);

        renderDatagrid(sysTaskPage);
    }

    @Before(SearchSql.class)
    public void exportToCvs() {
        String where = getAttr(Constant.SEARCH_SQL);
        String sqlSelect = "SELECT s.*";
        String sqlExceptSelect = " FROM " +
                "( SELECT st.*, " +
                "( SELECT sd.dict_value FROM sys_dict sd WHERE sd.dict_key = st.target_type AND sd.dict_type = 'task_type' ) AS task_type, " +
                "( SELECT sd.dict_value FROM sys_dict sd WHERE sd.dict_key = st. STATUS AND sd.dict_type = 'task_statu' ) AS task_status" +
                " FROM sys_task st ) s ";

        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where = " + where;
        }
        List<SysTask> sysTasks = SysTask.dao.find(sqlSelect + sqlExceptSelect);

        List<String> headers = Arrays.asList("名称", "任务类型", "任务值", "cron表达式","上次执行结果", "上次执行时间", "上次执行耗时", "状态");
        List<String> columns = Arrays.asList("name", "task_type", "target_value", "cron","last_run_result", "last_run_time", "last_run_time_cost", "task_status");
        CsvRender csvRender = new CsvRender(headers, sysTasks);
        csvRender.fileName("task.csv");
        csvRender.clomuns(columns);
        render(csvRender);

    }
}