package com.github.qinyou.oa;


import com.github.qinyou.common.constant.Constant;
import com.github.qinyou.oa.controller.*;
import com.jfinal.config.Routes;

/**
 * oa 模块路由
 *
 * @author zhangchuang
 */
public class OARoute extends Routes {

    @Override
    public void config() {
        // 通用
        add("/oa", OAController.class, Constant.VIEW_PATH);

        // 代办任务
        add("/myToDoTask", MyToDoTaskController.class, Constant.VIEW_PATH);
        // 已办任务（流程)
        add("/myCompleteTask", MyCompleteTaskController.class, Constant.VIEW_PATH);

        // 流程部署
        add("/processDeploy", ProcessDeployController.class, Constant.VIEW_PATH);

        // 流程定义
        add("/processDefine", ProcessDefineController.class, Constant.VIEW_PATH);


        //----------------- 业务表单开发 --------------------------
        // 简单请假流程
        add("/formLeave", FormLeaveController.class, Constant.VIEW_PATH);
    }
}
