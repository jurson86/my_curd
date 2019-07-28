package com.github.qinyou.oa.controller;


import com.github.qinyou.common.interceptor.PermissionInterceptor;
import com.github.qinyou.common.render.ImageRender;
import com.github.qinyou.common.utils.StringUtils;
import com.github.qinyou.common.validator.IdRequired;
import com.github.qinyou.common.web.BaseController;
import com.github.qinyou.oa.activiti.ActivitiUtils;
import com.github.qinyou.oa.service.DiagramService;
import com.github.qinyou.oa.vo.HistoricTaskInfo;
import com.jfinal.aop.Before;
import com.jfinal.aop.Clear;
import com.jfinal.aop.Inject;
import com.jfinal.kit.StrKit;
import org.activiti.engine.history.HistoricIdentityLink;
import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.history.HistoricTaskInstance;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Comment;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * oa 模块 公共 controller
 */
@Before(PermissionInterceptor.class)
public class OAController extends BaseController {
    @Inject
    private DiagramService diagramService;


    /**
     * 流程定义 流程图
     */
    @Clear(PermissionInterceptor.class)
    @Before(IdRequired.class)
    public void definitionDiagram() {
        String id = get("id"); // 流程定义id
        InputStream in = ActivitiUtils.getRepositoryService().getProcessDiagram(id);
        render(new ImageRender().inputStream(in));
    }

    /**
     * 流程跟踪高亮图
     */
    @Before(IdRequired.class)
    public void instanceDiagram() {
        String id = get("id");// 流程实例 id
        InputStream in = diagramService.instanceDiagram(id);
        render(new ImageRender().inputStream(in));
    }


    /**
     * 流程实例详情
     */
    @Before(IdRequired.class)
    public void processInstanceDetail(){
        String processInstanceId = getPara("id"); // 流程实例id
        ProcessInstance instance = ActivitiUtils.getRuntimeService().createProcessInstanceQuery()
                .processInstanceId(processInstanceId)
                .includeProcessVariables()
                .singleResult();

        String businessKey = instance.getBusinessKey();

        String businessForm = (String) instance.getProcessVariables().get("businessForm"); // 业务表单
        String initiator = (String) instance.getProcessVariables().get("initiator"); // 申请人

        setAttr("initiator",initiator);
        setAttr("processInstanceId",processInstanceId);
        setAttr("processInstanceName",instance.getName());
        setAttr("businessKey",businessKey);
        setAttr("businessForm",businessForm);
        render("oa/processInstance_detail.ftl");
    }


    /**
     * 历史流程详情
     */
    @Before(IdRequired.class)
    public void historicProcessInstanceDetail(){
        String processInstanceId = getPara("id");
        HistoricProcessInstance instance = ActivitiUtils.getHistoryService().createHistoricProcessInstanceQuery()
                .processInstanceId(processInstanceId)
                .includeProcessVariables()
                .singleResult();

        String businessKey = instance.getBusinessKey();
        String businessForm = (String) instance.getProcessVariables().get("businessForm"); // 业务表单
        String initiator = (String) instance.getProcessVariables().get("initiator"); // 申请人
        setAttr("initiator",initiator);
        setAttr("processInstanceId",processInstanceId);
        setAttr("processInstanceName",instance.getName());
        setAttr("businessKey",businessKey);
        setAttr("businessForm",businessForm);
        render("oa/processInstance_detail.ftl");
    }


    /**
     * 流程实例表单申请详情
     */
    public void processInstanceFormDetail(){
        String businessForm = getPara("businessForm");
        String businessKey = getPara("businessKey");
        if(StringUtils.isEmpty(businessForm)){
            renderText("businessForm 缺失");
            return;
        }

        if( StringUtils.isEmpty(businessKey)){
            renderText("businessKey 缺失");
            return;
        }

        String redirecturl = "/"+StrKit.toCamelCase(businessForm)+"/detail?id="+businessKey;
        redirect(redirecturl);
    }

    /**
     * 历史任务数据， 流程运转数据
     */
    @Before(IdRequired.class)
    public void  historicTaskInstances(){
        String processInstanceId = get("id");
        List<HistoricTaskInstance> historicTaskInstances = ActivitiUtils.getHistoryService().createHistoricTaskInstanceQuery()
                .processInstanceId(processInstanceId)
                .list();

        List<HistoricTaskInfo> historicTaskInfos = new ArrayList<>();
        historicTaskInstances.forEach(historicTaskInstance -> {


            HistoricTaskInfo historicTaskInfo =   new HistoricTaskInfo()
                    .setId(historicTaskInstance.getId())
                    .setName(historicTaskInstance.getName())
                    .setStartTime(historicTaskInstance.getStartTime())
                    .setEndTime(historicTaskInstance.getEndTime())
                    .setCreateTime(historicTaskInstance.getCreateTime())
                    .setClaimTime(historicTaskInstance.getClaimTime())
                    .setOwner(historicTaskInstance.getOwner());
            if(StringUtils.notEmpty(historicTaskInstance.getAssignee())){
                 historicTaskInfo.setAssignee(historicTaskInstance.getAssignee());
            }else{
                List<HistoricIdentityLink> historicIdentityLinks = ActivitiUtils.getHistoryService()
                        .getHistoricIdentityLinksForTask(historicTaskInstance.getId());
                List<String> candidateGroup = new ArrayList<>();
                List<String> candidateUser =  new ArrayList<>();
                historicIdentityLinks.forEach(historicIdentityLink -> {
                    if("candidate".equals(historicIdentityLink.getType())){
                        if(historicIdentityLink.getGroupId()!=null){
                            candidateGroup.add(historicIdentityLink.getGroupId());
                        }
                        if(historicIdentityLink.getUserId()!=null){
                            candidateUser.add(historicIdentityLink.getUserId());
                        }
                    }
                });
                // 候选组 和 候选用户
                historicTaskInfo.setCandidateGroup(candidateGroup);
                historicTaskInfo.setCandidateUser(candidateUser);
            }

            List<Comment> comments =  ActivitiUtils.getTaskService().getTaskComments(historicTaskInstance.getId());
            List<String> commentsStr = new ArrayList<>();
            comments.forEach(comment -> {
                commentsStr.add(comment.getFullMessage());
            });
            historicTaskInfo.setComments(commentsStr);
            historicTaskInfos.add(historicTaskInfo);
        });

        setAttr("historicTaskInfos",historicTaskInfos);
        render("oa/historicTaskInfos.ftl");
    }

}
