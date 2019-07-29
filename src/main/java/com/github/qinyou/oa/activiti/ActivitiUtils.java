package com.github.qinyou.oa.activiti;

import com.google.common.base.Joiner;
import com.jfinal.core.Controller;
import lombok.extern.slf4j.Slf4j;
import org.activiti.engine.*;
import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.impl.persistence.entity.ProcessDefinitionEntity;
import org.activiti.engine.impl.pvm.process.ActivityImpl;
import org.activiti.engine.runtime.ProcessInstance;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

@Slf4j
public class ActivitiUtils {

    // activiti api 工具
    public static ProcessEngine getProcessEngine() {
        return ActivitiPlugin.processEngine;
    }

    public static RepositoryService getRepositoryService() {
        return ActivitiPlugin.processEngine.getRepositoryService();
    }

    public static FormService getFormService() {
        return ActivitiPlugin.processEngine.getFormService();
    }

    public static IdentityService getIdentityService() {
        return ActivitiPlugin.processEngine.getIdentityService();
    }

    public static RuntimeService getRuntimeService() {
        return ActivitiPlugin.processEngine.getRuntimeService();
    }

    public static TaskService getTaskService() {
        return ActivitiPlugin.processEngine.getTaskService();
    }

    public static HistoryService getHistoryService() {
        return ActivitiPlugin.processEngine.getHistoryService();
    }


    /**
     * 接收流程表单 字段参数
     *
     * @param controller
     * @return
     */
    public static Map<String, Object> getFormParams(Controller controller) {
        Map<String, Object> ret = new LinkedHashMap<>();
        Map<String, String[]> properties = controller.getParaMap();
        for (Map.Entry<String, String[]> entry : properties.entrySet()) {
            String name = entry.getKey();
            String[] value = entry.getValue();

            // 表单字段必须是 fp_ 开头
            if (!name.startsWith("fp_")) {
                continue;
            }

            if (value.length == 1) {
                ret.put(name,value[0]);
            } else {
                ret.put(name, Joiner.on(",").join(value));
            }
        }
        log.debug("form properties: {}", ret.toString());
        return ret;
    }


    /**
     * 根据 业务表单记录id 查询流程信息
     * @param businessId
     * @return
     */
    public static Map<String,Object>  getInstanceInfoByBusinessKey(String businessId){
        Map<String,Object> ret = new HashMap<>();
        // 根据业务表单查询 实例
        ProcessInstance instance = ActivitiUtils.getRuntimeService().createProcessInstanceQuery()
                .processInstanceBusinessKey(businessId)
                .singleResult();

        if(instance!=null){
            ret.put("processInstanceId",instance.getId());
            String definitionId = instance.getProcessDefinitionId();
            String activityId = instance.getActivityId();
            ret.put("processDefinitionId",definitionId);
            ret.put("currentActivityId",activityId);
            ActivityImpl activity =  ActivitiUtils.getActivity(definitionId,activityId);
            if (activity!=null){
                ret.put("currentActivityName",activity.getProperty("name"));
            }
        }else{
            HistoricProcessInstance historicProcessInstance =  ActivitiUtils.getHistoryService().createHistoricProcessInstanceQuery()
                    .processInstanceBusinessKey(businessId)
                    .singleResult();
            if(historicProcessInstance!=null){
                ret.put("hisProcessInstanceId",historicProcessInstance.getId());
                ret.put("processDefinitionId",historicProcessInstance.getProcessDefinitionId());
                ret.put("startTime",historicProcessInstance.getStartTime());
                ret.put("endTime",historicProcessInstance.getEndTime());
                ret.put("durationInMillis",historicProcessInstance.getDurationInMillis());
                ret.put("deleteReason",historicProcessInstance.getDeleteReason());
            }
        }

        // hisProcessInstanceId  和 processInstanceId 是 一致的
        return ret;
    }

    /**
     * 获得流程定义某节点
     *
     * @param processDefinitionId
     * @param activityId
     * @return
     */
    public static ActivityImpl getActivity(String processDefinitionId, String activityId) {
        ProcessDefinitionEntity pde = (ProcessDefinitionEntity)
                ActivitiUtils.getRepositoryService().getProcessDefinition(processDefinitionId);
        ActivityImpl activity = pde.findActivity(activityId);
        return activity;
    }
}
