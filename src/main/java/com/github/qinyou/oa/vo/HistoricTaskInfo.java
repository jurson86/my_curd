package com.github.qinyou.oa.vo;


import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;
import java.util.List;

@Data
@Accessors(chain = true)
public class HistoricTaskInfo {
    private String id;
    private String name;
    private Date startTime;
    private Date endTime;
    private Date createTime;
    private Date claimTime;
    private String assignee;
    private String owner;
    private List<String> comments;
    // 候选组
    private List<String> candidateGroup;
    // 候选用户
    private List<String> candidateUser;
}
