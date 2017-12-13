package com.hxkj.common.config;

import com.hxkj.common.constant.Constant;
import com.hxkj.system.controller.*;
import com.jfinal.config.Routes;


public class SystemRoute extends Routes {

    @Override
    public void config() {

        // 登陆控制器
        add("/login", LoginController.class, Constant.VIEW_PATH);

        add("/main", MainController.class, Constant.VIEW_PATH);

        //菜单管理
        add("/sysMenu", SysMenuController.class, Constant.VIEW_PATH);

        // 角色管理
        add("/sysRole", SysRoleController.class, Constant.VIEW_PATH);

        // 组织机构管理
        add("/sysOrg", SysOrgController.class, Constant.VIEW_PATH);

        //用户管理
        add("/sysUser", SysUserController.class, Constant.VIEW_PATH);

        // 修改密码
        add("/sysChangePassword", SysChangePasswordController.class, Constant.VIEW_PATH);

        // 系统日志
        add("/sysOplog", sysOplogController.class, Constant.VIEW_PATH);

        // 定时任务
        add("/sysTask", SysTaskController.class, Constant.VIEW_PATH);

        // 文件管理
        add("/sysFile", SysFileController.class, Constant.VIEW_PATH);

    }

}
