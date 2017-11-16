package com.hxkj.common.route;

import com.hxkj.system.controller.*;
import com.jfinal.config.Routes;

import com.hxkj.common.constant.Constant;


public class SystemRoute extends Routes {

	@Override
	public void config() {
	 
		// 登陆控制器
		add("/login", LoginController.class,Constant.VIEW_PATH);

		add("/main", MainController.class, Constant.VIEW_PATH);
		
		//菜单管理
		add("/sysMenu", SysMenuController.class,Constant.VIEW_PATH);
		
		// 角色管理
		add("/sysRole", SysRoleController.class,Constant.VIEW_PATH);
		
		//用户管理
	    add("/sysUser", SysUserController.class,Constant.VIEW_PATH);
	    
	    add("/sysOrg",SysOrgController.class,Constant.VIEW_PATH);
	 
	}

}
