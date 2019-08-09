package com.github.qinyou.oa.vo;

import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;

@Data
@Accessors(chain = true)
public class TaskInfo {
    // taskId
    private String id;

    // 任务名称
    private String taskName;

    // 任务名编码
    private String taskDefinitionKey;


    // 创建时间
    private Date createTime;

    // 流程实例id
    private String processInstanceId;

    // 流程实例名
    private String processInstanceName;

    // 1 用户任务，2 候选任务
    private int type;

    // 申请人
    private String initiator;
}
