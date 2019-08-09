package com.github.qinyou.oa.controller;

import com.github.qinyou.common.annotation.RequireMenuCode;
import com.github.qinyou.common.utils.StringUtils;
import com.github.qinyou.common.utils.WebUtils;
import com.github.qinyou.common.web.BaseController;
import com.github.qinyou.oa.activiti.ActivitiConfig;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;

/**
 * 已办任务
 */
@RequireMenuCode("myCompleteTask")
public class MyCompleteTaskController extends BaseController {
    public void index() {
        render("oa/myCompleteTask.ftl");
    }

    public void query() {

        int pageNumber = getParaToInt("page", 1);
        int pageSize = getParaToInt("rows", 30);
        String processName = get("extra_processName");
        String applyUser = get("extra_applyUser");

        String username = WebUtils.getSessionUsername(this);
        String sqlSelect = "SELECT " +
                "	c.TEXT_ AS initiator, " +
                "	a.PROC_INST_ID_ AS processInstanceId, " +
                "	b.NAME_ AS processInstanceName, " +
                "	b.START_TIME_ AS startTime, " +
                "	b.END_TIME_ AS endTime ";
        String sqlExceptSelect = "FROM " +
                "	( SELECT PROC_INST_ID_ FROM act_hi_taskinst WHERE ASSIGNEE_ = '" + username + "' AND END_TIME_ IS NOT NULL GROUP BY PROC_INST_ID_ ) a " +
                "	LEFT JOIN act_hi_procinst b ON a.PROC_INST_ID_ = b.ID_ " +
                "	LEFT JOIN act_hi_varinst c ON a.PROC_INST_ID_ = c.PROC_INST_ID_  AND c.NAME_ = 'initiator'" +
                "   where b.DELETE_REASON_ is null  ";
        // and c.TEXT_ != '"+username+"'  加上此句，已办任务 不查询 自己申请的

        if (StringUtils.notEmpty(processName)) {
            sqlExceptSelect = sqlExceptSelect + " and b.NAME_ like '%" + processName + "%'";
        }
        if (StringUtils.notEmpty(applyUser)) {
            sqlExceptSelect = sqlExceptSelect + " and c.TEXT_ like '%" + applyUser + "%'";
        }
        sqlExceptSelect = sqlExceptSelect + " order by b.START_TIME_ desc ";

        Page<Record> page = Db.use(ActivitiConfig.DATASOURCE_NAME).paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
        renderDatagrid(page);
    }
}
