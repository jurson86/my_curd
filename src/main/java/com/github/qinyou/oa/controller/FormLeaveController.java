package com.github.qinyou.oa.controller;

import com.github.qinyou.common.annotation.RequireMenuCode;
import com.github.qinyou.common.constant.Constant;
import com.github.qinyou.common.interceptor.PermissionInterceptor;
import com.github.qinyou.common.interceptor.SearchSql;
import com.github.qinyou.common.utils.Id.IdUtils;
import com.github.qinyou.common.utils.StringUtils;
import com.github.qinyou.common.utils.WebUtils;
import com.github.qinyou.common.validator.IdRequired;
import com.github.qinyou.common.validator.IdsRequired;
import com.github.qinyou.common.web.BaseController;
import com.github.qinyou.oa.activiti.ActivitiConfig;
import com.github.qinyou.oa.activiti.ActivitiUtils;
import com.github.qinyou.oa.model.FormLeave;
import com.github.qinyou.system.model.SysUser;
import com.jfinal.aop.Before;
import com.jfinal.aop.Clear;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.tx.Tx;
import com.jfinal.plugin.activerecord.tx.TxConfig;
import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.runtime.ProcessInstanceBuilder;
import org.joda.time.DateTime;

import java.util.Date;

/**
 * form_leave 控制器
 *
 * @author zhangchuang
 * @since 2019-07-23 15:50:30
 */

@RequireMenuCode("formLeave")
public class FormLeaveController extends BaseController {

    // 流程 key
    private final static String PROCESS_KEY = "easy-leave-request";
    private final static String PROCESS_NAME = "简单请假流程";
    private final static String BUSINESS_FORM = "form_leave";

    /**
     * 列表页
     */
    public void index() {
        render("oa/formLeave.ftl");
    }

    /**
     * 列表数据
     */
    @Before(SearchSql.class)
    public void query() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);
        // 样板式代码
        if (StringUtils.notEmpty(where)) {
            where += " and ";
        }
        where += " creater = '" + WebUtils.getSessionUsername(this) + "'";
        Page<FormLeave> formLeavePage = FormLeave.dao.page(pageNumber, pageSize, where);
        for (FormLeave formLeave : formLeavePage.getList()) {
            ActivitiUtils.getInstanceInfoByBusinessKey(formLeave.getId()).forEach(formLeave::put);
        }
        renderDatagrid(formLeavePage);
    }


    /**
     * 打开新增或者修改弹出框
     */
    public void newModel() {
        String id = getPara("id");
        if (StringUtils.notEmpty(id)) {
            FormLeave formLeave = FormLeave.dao.findById(id);
            setAttr("formLeave", formLeave);
        }
        render("oa/formLeave_form.ftl");
    }


    /**
     * 新增 action
     */
    @TxConfig(ActivitiConfig.DATASOURCE_NAME)
    @Before(Tx.class)
    public void addAction() {
        FormLeave formLeave = getBean(FormLeave.class, "");
        formLeave.setId(IdUtils.id())
                .setCreater(WebUtils.getSessionUsername(this))
                .setCreateTime(new Date());
        formLeave.save();
        SysUser sysUser = WebUtils.getSysUser(this);
        String processInstanceName = PROCESS_NAME + "-( " + sysUser.getRealName()
                + new DateTime(formLeave.getCreateTime()).toString(" yyyy/MM/dd HH:mm )");
        ProcessInstanceBuilder builder = ActivitiUtils.getRuntimeService().createProcessInstanceBuilder()
                .processDefinitionKey(PROCESS_KEY)
                .businessKey(formLeave.getId())
                .processInstanceName(processInstanceName)
                .addVariable("businessForm", BUSINESS_FORM) // 流程中增加 业务表 名称
                .addVariable("initiator", sysUser.getUsername()); // 流程发起人
        builder.start();
        renderSuccess(ADD_SUCCESS);
    }

    /**
     * 修改 action
     */
    public void updateAction() {
        FormLeave formLeave = getBean(FormLeave.class, "");
        formLeave.setUpdater(WebUtils.getSessionUsername(this))
                .setUpdateTime(new Date());
        if (formLeave.update()) {
            renderSuccess(UPDATE_SUCCESS);
        } else {
            renderFail(UPDATE_FAIL);
        }
    }

    /**
     * 删除 action
     */
    @TxConfig(ActivitiConfig.DATASOURCE_NAME)
    @Before({IdsRequired.class, Tx.class})
    public void deleteAction() {
        String[] idAry = getPara("ids").split(",");
        for (String id : idAry) {
            FormLeave formLeave = FormLeave.dao.findById(id);
            if (formLeave == null) {
                continue;
            }

            // 不可删除非自己创建的申请
            if (!WebUtils.getSessionUsername(this).equals(formLeave.getCreater())) {
                throw new RuntimeException("非法删除流程操作");
            }
            formLeave.delete();

            ProcessInstance instance = ActivitiUtils.getRuntimeService().createProcessInstanceQuery()
                    .processInstanceBusinessKey(id)
                    .singleResult();
            if (instance != null) {
                // 字段标识 删除位
                ActivitiUtils.getRuntimeService().deleteProcessInstance(instance.getId(), ActivitiConfig.DEL_INSTANCE_BY_USER);
            } else {
                HistoricProcessInstance historicProcessInstance = ActivitiUtils.getHistoryService().createHistoricProcessInstanceQuery()
                        .processInstanceBusinessKey(id)
                        .singleResult();
                if (historicProcessInstance != null) {
                    // 真实删除
                    ActivitiUtils.getHistoryService().deleteHistoricProcessInstance(historicProcessInstance.getId());
                }
            }
        }
        renderSuccess(DELETE_SUCCESS);
    }


    /**
     * 表单详情, 不做权限控制
     */
    @Clear(PermissionInterceptor.class)
    @Before(IdRequired.class)
    public void detail() {
        String id = getPara("id");
        FormLeave formLeave = FormLeave.dao.findById(id);
        setAttr("formLeave", formLeave);
        render("oa/formLeave_detail.ftl");
    }
}
