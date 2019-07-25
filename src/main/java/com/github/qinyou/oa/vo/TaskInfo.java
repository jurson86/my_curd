package com.github.qinyou.oa.vo;

import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;

@Data
@Accessors(chain = true)
public class TaskInfo {
    private String processInstanceName;
    private String id;
    private String name;
    private String processInstanceId;
    private String description;
    private Date createTime;
    private String formKey;
    private String assignee;
    private String executionId;
    private Date dueDate;

}
