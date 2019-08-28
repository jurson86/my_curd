package com.github.qinyou.oa.vo;

import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;

/**
 * 运行中流程实例
 */
@Data
@Accessors(chain = true)
public class ProcessInstanceInfo {
    private String initiator;
    private String processInstanceId;
    private String name;
    private Date startTime;
    private Date endTime;
    private String activityName;
}
