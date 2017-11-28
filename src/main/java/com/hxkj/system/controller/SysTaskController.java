package com.hxkj.system.controller;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.SearchSql;
import com.hxkj.common.util.csv.CsvRender;
import com.hxkj.system.model.SysDict;
import com.hxkj.system.model.SysTask;
import com.hxkj.system.service.TaskService;
import com.jfinal.aop.Before;
import com.jfinal.aop.Duang;
import com.jfinal.kit.JsonKit;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

import java.util.Arrays;
import java.util.List;


/**
 *  糟糕的设计，实用价值不大。
 *  //TODO　重构
 */
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

        List<String> headers = Arrays.asList("名称", "任务类型", "任务值", "cron表达式", "上次执行结果", "上次执行时间", "上次执行耗时", "状态");
        List<String> columns = Arrays.asList("name", "task_type", "target_value", "cron", "last_run_result", "last_run_time", "last_run_time_cost", "task_status");
        CsvRender csvRender = new CsvRender(headers, sysTasks);
        csvRender.fileName("task.csv");
        csvRender.clomuns(columns);
        render(csvRender);
    }

    public void newModel() {
        String id = getPara("id");
        if (id != null) {
            SysTask sysTask = SysTask.dao.findById(id);
            setAttr("sysTask", sysTask);
            List<SysDict>  taskStatus = SysDict.dao.find("select * from sys_dict where dict_type = 'task_statu' ");
            setAttr("taskStatus",taskStatus);
        }

        List<SysDict>  taskTypes = SysDict.dao.find("select * from sys_dict where dict_type = 'task_type' ");
        setAttr("taskTypes",taskTypes);
        render("system/sysTask_form.html");
    }

    public void addAction() {
        SysTask sysTask = getBean(SysTask.class, "");
        System.out.println(JsonKit.toJson(sysTask));

        TaskService taskService = Duang.duang(TaskService.class);
        taskService.add(sysTask);
        addOpLog("[定时任务]增加");

        renderText(Constant.ADD_SUCCESS);
    }

    public void updateAction() {
        SysTask sysTask = getBean(SysTask.class, "");
        TaskService taskService = Duang.duang(TaskService.class);
        taskService.update(sysTask);
        addOpLog("[定时任务] 修改");
        renderText(Constant.UPDATE_SUCCESS);
    }

    public void deleteAction() {
        Integer id = getParaToInt("id");
        TaskService taskService = Duang.duang(TaskService.class);
        taskService.delete(id);
        addOpLog("[定时任务] 删除");
        renderText(Constant.DELETE_SUCCESS);
    }


    //启动/停止任务
    public void startOrStop() {
        TaskService taskService = Duang.duang(TaskService.class);
        taskService.startOrStop(getParaToInt("id"), getParaToInt("status"));
        renderSuccess();
    }

    //立即执行
    public void runAtSoon() {
        //（不可以长时间任务）
        // 长时间 任务 会一致阻塞当前 线程，前台得不到反馈
        TaskService taskService = Duang.duang(TaskService.class);
        SysTask sysTask = SysTask.dao.findById(getPara("id"));
        taskService.runAtSoon(sysTask);
        renderSuccess();
    }

}