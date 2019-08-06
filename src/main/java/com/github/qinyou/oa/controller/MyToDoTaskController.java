package com.github.qinyou.oa.controller;

import com.github.qinyou.common.annotation.RequireMenuCode;
import com.github.qinyou.common.utils.StringUtils;
import com.github.qinyou.common.utils.WebUtils;
import com.github.qinyou.common.validator.IdRequired;
import com.github.qinyou.common.web.BaseController;
import com.github.qinyou.oa.activiti.ActivitiConfig;
import com.github.qinyou.oa.activiti.ActivitiUtils;
import com.github.qinyou.oa.vo.TaskInfo;
import com.google.common.base.Joiner;
import com.jfinal.aop.Before;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;
import com.jfinal.plugin.activerecord.tx.Tx;
import com.jfinal.plugin.activerecord.tx.TxConfig;
import lombok.extern.slf4j.Slf4j;
import org.activiti.engine.TaskService;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.activiti.engine.task.TaskQuery;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@SuppressWarnings("Duplicates")
@Slf4j
@RequireMenuCode("myToDoTask")
public class MyToDoTaskController extends BaseController {

    public void index(){
        render("oa/myToDoTask.ftl");
    }

    /**
     * 查询用户任务
     */
    public void  query(){
        List<TaskInfo> list = new ArrayList<>();

        // 用户任务
        String processInstanceName;
        TaskQuery query =  ActivitiUtils.getTaskService().createTaskQuery();
        List<Task> tasks = query.taskAssignee(WebUtils.getSessionUsername(this)).active()
                .orderByTaskCreateTime().desc().list();
        for(Task task:tasks){
            processInstanceName = ActivitiUtils.getRuntimeService()
                    .createProcessInstanceQuery()
                    .processInstanceId(task.getProcessInstanceId())
                    .singleResult()
                    .getName();
            list.add(new TaskInfo().setId(task.getId()).setType(1).setCreateTime(task.getCreateTime()).setTaskName(task.getName())
                    .setTaskDefinitionKey( task.getTaskDefinitionKey())
                    .setProcessInstanceName(processInstanceName).setProcessInstanceId(task.getProcessInstanceId()));
        }

        // 候选任务
        String roleCodes = getSessionAttr("roleCodes");
        List<String> roleCodeList = new ArrayList<>();
        for(String roleCode:roleCodes.split(",")){
             roleCodeList.add("role_"+roleCode);
        }
        roleCodes = Joiner.on("','").join(roleCodeList);
        String username = WebUtils.getSessionUsername(this);
        String sql =" SELECT DISTINCT RES.* " +
                "  FROM " +
                "	ACT_RU_TASK RES " +
                "	INNER JOIN ACT_RU_IDENTITYLINK I ON I.TASK_ID_ = RES.ID_ " +
                "	INNER JOIN ACT_RU_IDENTITYLINK I_OR0 ON I_OR0.TASK_ID_ = RES.ID_  " +
                "WHERE " +
                "	RES.SUSPENSION_STATE_ = 1  " +
                "	AND ( " +
                "		( RES.ASSIGNEE_ IS NULL AND I.TYPE_ = 'candidate' AND ( I.GROUP_ID_ IN ( '"+roleCodes+"' ) ) ) " +
                "	    OR  " +
                "       ( RES.ASSIGNEE_ IS NULL AND I_OR0.TYPE_ = 'candidate' AND ( I_OR0.USER_ID_ = '"+username+"' ) ) " +
                "	) " +
                " ORDER BY RES.CREATE_TIME_ desc";
        List<Record> records =  Db.use(ActivitiConfig.DATASOURCE_NAME).find(sql);
        for(Record record: records){
            processInstanceName = ActivitiUtils.getRuntimeService()
                    .createProcessInstanceQuery()
                    .processInstanceId(record.getStr("PROC_INST_ID_"))
                    .singleResult()
                    .getName();
            list.add(new TaskInfo().setId(record.getStr("ID_")).setType(2)
                    .setCreateTime(record.getDate("CREATE_TIME_")).setTaskName(record.getStr("NAME_"))
                    .setTaskDefinitionKey(record.getStr("TASK_DEF_KEY_"))
                    .setProcessInstanceName(processInstanceName).setProcessInstanceId(record.getStr("PROC_INST_ID_")));
        }

        renderDatagrid(list,list.size());
    }

    /**
     * 认领任务
     */
    @Before(IdRequired.class)
    public void claimAction(){
        String taskId = getPara("id");
        ActivitiUtils.getTaskService().claim(taskId,WebUtils.getSessionUsername(this));
        renderSuccess("认领成功");
    }


    /**
     * 跳转到任务办理界面
     */
    @Before(IdRequired.class)
    public void goCompleteForm(){
        String taskId = getPara("id");
        Task task  = ActivitiUtils.getTaskService().createTaskQuery()
                .taskId(taskId).singleResult();

        set("taskName",task.getName());
        if(StringUtils.notEmpty(task.getDescription())){
            set("taskDescription",task.getDescription());
        }
        set("taskId",task.getId());
        String processInstanceId = task.getProcessInstanceId();
        set("processInstanceId",processInstanceId);

        ProcessInstance processInstance = ActivitiUtils.getRuntimeService().createProcessInstanceQuery()
                .processInstanceId(processInstanceId)
                .includeProcessVariables()
                .singleResult();

        String businessForm = (String) processInstance.getProcessVariables().get("businessForm");
        String initiator = (String) processInstance.getProcessVariables().get("initiator");
        String renderedTaskForm = (String) ActivitiUtils.getFormService().getRenderedTaskForm(taskId);

        setAttr("initiator",initiator);  // 发起人
        setAttr("processInstanceName",processInstance.getName()); // 流程实例名
        setAttr("businessKey",processInstance.getBusinessKey()); // 业务表 id
        setAttr("businessForm",businessForm);  // 业务表名
        setAttr("renderedTaskForm",renderedTaskForm); // 任务表单

        // 如果是调整表单, 显示调整操作
        String taskDefinitionKey = task.getTaskDefinitionKey();
        setAttr("taskDefinitionKey",taskDefinitionKey);
        if("adjustForm".equals(taskDefinitionKey)){
            String adjustFormUrl =  StrKit.toCamelCase(businessForm)+"/newModel?id="+getAttr("businessKey");
            setAttr("adjustFormUrl",adjustFormUrl);
        }

        render("oa/myToDoTask_complete.ftl");
    }

    /**
     * 完成任务
     */
    @TxConfig(ActivitiConfig.DATASOURCE_NAME)
    @Before({IdRequired.class, Tx.class})
    public void completeAction(){
        String taskId = getPara("id");
        String processInstanceId = getPara("processInstanceId");
        if(StringUtils.isEmpty(processInstanceId)){
            renderFail("processInstanceId 参数为空");
            return;
        }
        Task task = ActivitiUtils.getTaskService().createTaskQuery()
                .taskId(taskId)
                .singleResult();
        Map<String,Object> formParams = ActivitiUtils.getFormParams(this);

        String comment = getPara("comment","");
        if(task.getFormKey()!=null){
            // 有表单
            // 特殊表单格式 name fp_en-中文
            Map<String,Object> variables = new LinkedHashMap<>();
            formParams.forEach((k,v)->{
                if(k.contains("-")){
                    String[] nameAry = k.split("-");
                    String kTemp,vTemp;
                    kTemp = nameAry[0];
                    vTemp = nameAry[1]+": "+v;
                    variables.put(kTemp,v);
                    ActivitiUtils.getTaskService().addComment(taskId,processInstanceId,vTemp);
                }else{
                    variables.put(k,v);
                    ActivitiUtils.getTaskService().addComment(taskId,processInstanceId,v.toString());
                }
            });
            ActivitiUtils.getTaskService().addComment(taskId,processInstanceId,comment);
            ActivitiUtils.getTaskService().complete(taskId,variables);
        }else{
            // 无表单
            ActivitiUtils.getTaskService().addComment(taskId,processInstanceId,comment);
            ActivitiUtils.getTaskService().complete(taskId);
        }

        renderSuccess("办理成功");
    }


    // 转办
    @TxConfig(ActivitiConfig.DATASOURCE_NAME)
    @Before(Tx.class)
    public void changeAssigneeAction(){
        String taskId = getPara("taskId"); // taskId;
        String username = getPara("username");
        if (StringUtils.isEmpty(taskId) || StringUtils.isEmpty(username)){
            renderFail("参数缺失");
            return;
        }
        TaskService taskService = ActivitiUtils.getTaskService();
        Task task = taskService.createTaskQuery().taskId(taskId).singleResult();
        if(task==null){
            renderFail("任务不存在");
            return;
        }
        if(username.equals(task.getAssignee())){
            renderFail("原任务处理人 和 转办人 不可相同");
            return;
        }

        // 设置上个任务处理人
        ActivitiUtils.getTaskService().setVariableLocal(taskId,"lastAssignee",task.getAssignee());
        ActivitiUtils.getTaskService().setAssignee(taskId,username);
        renderSuccess("转办 操作成功 ");
    }



}
