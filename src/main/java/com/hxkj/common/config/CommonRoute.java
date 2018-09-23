package com.hxkj.common.config;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.controller.SystemNotificationController;
import com.hxkj.common.controller.UserInfoController;
import com.hxkj.common.controller.UserPasswordController;
import com.hxkj.common.controller.UtilsController;
import com.hxkj.common.interceptor.PermissionInterceptor;
import com.jfinal.aop.Clear;
import com.jfinal.config.Routes;

/**
 * 公共的，不需要权限控制的 模块路由
 *
 * @author chuang
 * @date 2018-06-20 18:56:48
 */
public class CommonRoute extends Routes {
    @Override
    public void config() {
        // 系统通知
        add("/systemNotification", SystemNotificationController.class,Constant.VIEW_PATH);
        // 修改密码
        add("/userPassword", UserPasswordController.class, Constant.VIEW_PATH);
        // 修改个人信息
        add("/userInfo", UserInfoController.class, Constant.VIEW_PATH);
        // 工具页面
        add("/utils", UtilsController.class, Constant.VIEW_PATH);
    }
}
