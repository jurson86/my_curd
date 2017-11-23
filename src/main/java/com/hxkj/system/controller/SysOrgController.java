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

import com.hxkj.common.util.SearchSql;
import com.hxkj.common.constant.Constant;
import com.hxkj.system.model.SysOrg;
import com.hxkj.common.util.BaseController;
import com.hxkj.system.model.SysUser;


public class SysOrgController  extends BaseController{
	
	public  void index(){
		 render( "system/sysOrg.html");   
	}


	@Before(SearchSql.class)
	public void query(){
		String where = getAttr(Constant.SEARCH_SQL);
		String sqlSelect = " select * ";
		String sqlExceptSelect = " from sys_org  ";
		if (StrKit.notBlank(where)) {
			sqlExceptSelect += " where " + where;
		}
		sqlExceptSelect += " order by id asc , sort asc ";
		List<SysOrg> sysOrgs = SysOrg.dao.find(sqlSelect+sqlExceptSelect);
		renderJson(sysOrgs);
	}



	@Before(SearchSql.class)
	public void queryUser(){
		int pageNumber = getAttr("pageNumber");
		int pageSize = getAttr("pageSize");
		String where = getAttr(Constant.SEARCH_SQL);
        Integer id = getParaToInt("orgId");

		String sqlSelect = " select * ";
		String sqlExceptSelect = " from sys_user  ";

        if(id!=null){
			Record record = Db.findFirst("select getChildLst(?,'sys_org') as childrenIds ",id);
			String childrenIds = record.getStr("childrenIds");  // 子、孙 id
			if (StrKit.notBlank(childrenIds)) {
				sqlExceptSelect += " where  org_id  in  ("+childrenIds+")";;
			}

			if (StrKit.notBlank(where)) {
				sqlExceptSelect += " and   ( "+where+" )";
			}
		}else{
			if (StrKit.notBlank(where)) {
				sqlExceptSelect += " where " + where;
			}

		}

		sqlExceptSelect += " order by create_time ";
		Page<SysUser> sysUsers = SysUser.dao.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);

		renderDatagrid(sysUsers);
	}


	public void newModel(){
		Integer id = getParaToInt("id");
		if(id!=null){
			SysOrg sysOrg = SysOrg.dao.findById(id);
			setAttr("sysOrg",sysOrg);
		}
		render("system/sysOrg_form.html");
	}

	public void addAction(){
		SysOrg sysOrg = getBean(SysOrg.class,"");
		boolean saveFlag = sysOrg.save();
		if(saveFlag) {
			renderText(Constant.ADD_SUCCESS);
		}else {
			renderText(Constant.ADD_FAIL);
		}
	}

	public void updateAction(){
		SysOrg sysOrg = getBean(SysOrg.class,"");
		boolean updateFlag = sysOrg.update();
		if (updateFlag) {
			renderText(Constant.UPDATE_SUCCESS);
		}else {
			renderText(Constant.UPDATE_FAIL);
		}
	}


	/**
	 * 1: 删除当前结构和子组织机构
	 * 2： 当前机构和子组织机构的 人员 orgId 设置为null
	 */
	@Before(Tx.class)
	public void deleteAction(){

		Integer id =getParaToInt("id");

		Record record = Db.findFirst("select getChildLst(?,'sys_org') as childrenIds ",id);
		String childrenIds = record.getStr("childrenIds");  // 子、孙 id


		String deleteSql = "delete from sys_org where  id  in ("+childrenIds+")";
		Db.update(deleteSql);

		String updateSql = "update sys_user set org_id = null where  org_id in ("+childrenIds+")";
		Db.update(updateSql);

		renderText(Constant.DELETE_SUCCESS);

	}


	public void allOrg(){
		List<SysOrg> sysOrgs =  SysOrg.dao.findAll();
		List<Map<String,Object>> maps = new ArrayList<Map<String, Object>>();
		for(SysOrg sysOrg: sysOrgs){
		    Map<String,Object> map = new HashMap<String, Object>();
			map.put("id", sysOrg.getId());
			map.put("pid", sysOrg.getPid());
			map.put("text", sysOrg.getOrgName());
			map.put("open", true);
			maps.add(map);
		}
		renderJson(maps);
	}


}
