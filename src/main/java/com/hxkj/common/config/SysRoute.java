package com.hxkj.common.config;

import com.hxkj.LoginController;
import com.hxkj.MainController;
import com.hxkj.common.constant.Constant;
import com.hxkj.system.controller.*;
import com.jfinal.config.Routes;


/**
 * sys 模块 路由
 */
public class SysRoute extends Routes {

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

        // 文件管理
        add("/sysFile", SysFileController.class, Constant.VIEW_PATH);

        // 文章 管理
        add("/sysNews", SysNewsController.class, Constant.VIEW_PATH);

        // 字典表管理
        add("/sysDict", SysDictController.class, Constant.VIEW_PATH);

        // 代码生成器
        add("/sysGenerator", SysGeneratorController.class, Constant.VIEW_PATH);


    }

}
