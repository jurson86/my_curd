package com.hxkj.common.config;

import com.hxkj.LoginController;
import com.hxkj.MainController;
import com.hxkj.auth.controller.AuthMenuController;
import com.hxkj.auth.controller.AuthOrgController;
import com.hxkj.auth.controller.AuthRoleController;
import com.hxkj.auth.controller.AuthUserController;
import com.hxkj.common.constant.Constant;
import com.jfinal.config.Routes;

/**
 * 权限管理模块
 *
 * @author chuang
 * @date 2018-06-20 18:56:48
 */
public class AuthRoute extends Routes {

    @Override
    public void config() {
        // 登陆控制器
        add("/login", LoginController.class, Constant.VIEW_PATH);
        add("/main", MainController.class, Constant.VIEW_PATH);

        //菜单管理
        add("/authMenu", AuthMenuController.class, Constant.VIEW_PATH);
        // 角色管理
        add("/authRole", AuthRoleController.class, Constant.VIEW_PATH);
        // 组织机构管理
        add("/authOrg", AuthOrgController.class, Constant.VIEW_PATH);
        //用户管理
        add("/authUser", AuthUserController.class, Constant.VIEW_PATH);
    }

}

