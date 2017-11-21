package com.hxkj.system.controller;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.SearchSql;
import com.hxkj.system.model.SysRole;
import com.hxkj.system.model.SysUser;
import com.jfinal.aop.Before;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

public class SysUserController extends BaseController {
	
	
	public void index(){
		renderText("用户管理");
	}


	@Before(SearchSql.class)
	public void query(){
		int pageNumber = getAttr("pageNumber");
		int pageSize = getAttr("pageSize");
		String where = getAttr(Constant.SEARCH_SQL);

		String sqlSelect = " select * ";
		String sqlExceptSelect = " from sys_user   ";
		if (StrKit.notBlank(where)) {
			sqlExceptSelect += " where " + where;
		}

		where += "order by create_time";
		Page<SysUser> sysUsers = SysUser.dao.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);

		renderDatagrid(sysUsers);
	}

}
