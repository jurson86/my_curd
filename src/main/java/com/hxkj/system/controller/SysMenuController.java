package com.hxkj.system.controller;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.search.SearchSql;
import com.hxkj.system.model.SysMenu;
import com.jfinal.aop.Before;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;
import com.jfinal.plugin.activerecord.tx.Tx;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 系统菜单管理
 *
 * @author Administrator
 */
public class SysMenuController extends BaseController {


    public void index() {
        render("system/sysMenu.html");
    }

    @Before(SearchSql.class)
    public void query() {
        String where = getAttr(Constant.SEARCH_SQL);
        List<SysMenu> sysMenus = SysMenu.dao.findWhere(where);
        renderJson(sysMenus);
    }


    /**
     * 新增 或者 编辑  form
     */
    public void newModel() {
        Integer id = getParaToInt("id");
        if (id != null) {
            SysMenu sysMenu = SysMenu.dao.findById(id);
            setAttr("sysMenu", sysMenu);
        }
        render("system/sysMenu_form.html");
    }


    public void addAction() {
        SysMenu sysMenu = getBean(SysMenu.class, "");
        if (sysMenu.getPid() == null) {
            sysMenu.setPid(0);
        }
        boolean saveFlag = sysMenu.save();
        if (saveFlag) {
            renderText(Constant.ADD_SUCCESS);
        } else {
            renderText(Constant.ADD_FAIL);
        }
    }


    public void updateAction() {
        SysMenu sysMenu = getBean(SysMenu.class, "");
        if (sysMenu.getPid() == null) {
            sysMenu.setPid(0);
        }
        boolean updateFlag = sysMenu.update();
        if (updateFlag) {
            renderText(Constant.UPDATE_SUCCESS);
        } else {
            renderText(Constant.UPDATE_FAIL);
        }

    }


    @Before(Tx.class)
    public void deleteAction() {
        Integer id = getParaToInt("id");

        //删除当前菜单节点以及子孙节点
        Record record = Db.findFirst("select getChildLst(?,'sys_menu') as childrenIds ", id);
        String childrenIds = record.getStr("childrenIds");  // 子、孙 id
        String deleteSql = "delete from sys_menu where id in (" + childrenIds + ")";
        Db.update(deleteSql);

        //删除当前菜单节点以及子节点 关联的 角色关系
        deleteSql = "delete from sys_role_menu where menu_id in (" + childrenIds + ") ";
        Db.update(deleteSql);
        renderText(Constant.DELETE_SUCCESS);
    }

    /**
     * 所有菜单
     */
    public void allMenu() {
        List<SysMenu> sysMenus = SysMenu.dao.findAll();
        List<Map<String, Object>> maps = new ArrayList<Map<String, Object>>();
        for (SysMenu sysMenu : sysMenus) {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("id", sysMenu.getId());
            map.put("pid", sysMenu.getPid());
            map.put("text", sysMenu.getName());
            map.put("iconCls", sysMenu.getIcon());
            map.put("open", true);
            maps.add(map);
        }
        renderJson(maps);
    }

}
