package com.hxkj.system.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jfinal.aop.Before;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;
import com.jfinal.plugin.activerecord.tx.Tx;

import com.hxkj.common.constant.Constant;
import com.hxkj.system.model.SysMenu;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.SearchSql;


/**
 * 系统菜单管理
 * @author Administrator
 *
 */
public class SysMenuController  extends BaseController {



	public  void index(){
		 render( "system/sysMenu.html");
	}


	/**
	 * grid 列表 数据
	 */
	@Before(SearchSql.class)
	public void query() {
		int pageNumber = getAttr("pageNumber");
		int pageSize = getAttr("pageSize");

		String where = getAttr(Constant.SEARCH_SQL);

		String sqlSelect = " select * ";
		String sqlExceptSelect = " from sys_menu  ";
		if (StrKit.notBlank(where)) {
			sqlExceptSelect += " where " + where;
		}
		sqlExceptSelect += " order by   sort asc ";
		Page<SysMenu> sysMenus = SysMenu.dao.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);

		renderDatagrid(sysMenus);
	}


	/**
	 * 新增 或者 编辑  form
	 */
	public  void newModel(){
         Integer id = getParaToInt("id");
         if(id!=null){
         	SysMenu sysMenu = SysMenu.dao.findById(id);
         	setAttr("sysMenu",sysMenu);
		 }
		 render("system/sysMenu_form.html");
	}



	public void  addAction(){
		SysMenu sysMenu = getBean(SysMenu.class,"");
		boolean saveFlag =  sysMenu.save();
		if(saveFlag) {
			renderText(Constant.ADD_SUCCESS);
		}else {
			renderText(Constant.ADD_FAIL);
		}

	}

	
	public void updateAction(){
		SysMenu sysMenu = getBean(SysMenu.class,"");
		boolean updateFlag = sysMenu.update();
		if (updateFlag) {
			renderText(Constant.UPDATE_SUCCESS);
		}else {
			renderText(Constant.UPDATE_FAIL);
		}
		
	}


	@Before(Tx.class)
	public  void deleteAction(){
		Integer id =getParaToInt("id");

		Record record = Db.findFirst("select getChildLst(?,'sys_menu') as childrenIds ",id);
		String childrenIds = record.getStr("childrenIds");  // 子、孙 id

		// 删除相应 角色菜单
		String deleteSql = "delete from sys_menu where id in ("+childrenIds+")";
		Db.update(deleteSql);

		// 删除角色菜单关联数据
		deleteSql ="delete from sys_role_menu where menu_id in ("+childrenIds+") ";
		Db.update(deleteSql);

		renderText(Constant.DELETE_SUCCESS);

	}
	
	/**
	 * 全部菜单
	 */
	public void allMenu(){
		List<SysMenu> sysMenus =  SysMenu.dao.findAll();
		List<Map<String,Object>> maps = new ArrayList<Map<String, Object>>();
		for(SysMenu sysMenu: sysMenus){
			Map<String,Object> map = new HashMap<String, Object>();
			map.put("id", sysMenu.getId());
			map.put("pid", sysMenu.getPid());
			map.put("text", sysMenu.getName());
			map.put("icon", sysMenu.getIcon());
			map.put("open", true);
			maps.add(map);
		}
		renderJson(maps);
	}

}
