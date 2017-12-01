package com.hxkj.system.controller;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.SearchSql;
import com.hxkj.system.model.SysMenu;
import com.hxkj.system.model.SysRole;
import com.hxkj.system.model.SysRoleMenu;
import com.jfinal.aop.Before;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.tx.Tx;

import java.util.*;

public class SysRoleController extends BaseController {

    public void index() {

        render("system/sysRole.html");

    }


    @Before(SearchSql.class)
    public void query() {

        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);

        String sqlSelect = " select * ";
        String sqlExceptSelect = " from sys_role   ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }

        where += "order by id asc , sort asc";
        Page<SysRole> sysMenus = SysRole.dao.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);

        renderDatagrid(sysMenus);
    }


    /**
     * 新增 或者 编辑  form
     */
    public void newModel() {
        Integer id = getParaToInt("id");
        if (id != null) {
            SysRole sysRole = SysRole.dao.findById(id);
            setAttr("sysRole", sysRole);
        }
        render("system/sysRole_form.html");
    }


    public void addAction() {
        SysRole sysRole = getBean(SysRole.class, "");
        sysRole.setCreateTime(new Date());
        boolean saveFlag = sysRole.save();
        if (saveFlag) {
            renderText(Constant.ADD_SUCCESS);
        } else {
            renderText(Constant.ADD_FAIL);
        }

    }

    public void updateAction() {
        SysRole sysRole = getBean(SysRole.class, "");
        sysRole.setCreateTime(new Date());
        boolean updateFlag = sysRole.update();
        if (updateFlag) {
            renderText(Constant.UPDATE_SUCCESS);
        } else {
            renderText(Constant.UPDATE_FAIL);
        }

    }


    @Before(Tx.class)
    public void deleteAction() {

        Integer id = getParaToInt("id");

        // 角色表
        String deleteSql = "delete from sys_role where id = ?";
        Db.update(deleteSql, id);

        // 角色 菜单中间表
        deleteSql = "delete from sys_role_menu where role_id = ?";
        Db.update(deleteSql, id);

        //用户角色表
        deleteSql = "delete from sys_user_role where role_id = ?";
        Db.update(deleteSql, id);

        renderText(Constant.DELETE_SUCCESS);

    }


    /**
     * 用户赋权限
     */
    @Before(Tx.class)
    public void givePermission() {
        Integer roleId = getParaToInt("roleId");
        String permissIds = getPara("permissIds");
        String deleteSql = "delete from  sys_role_menu where role_id = ?";
        Db.update(deleteSql, roleId);

        if(StrKit.notBlank(permissIds)){
            String[] menuIds = permissIds.split(";");

            for (int i = 0; i < menuIds.length; i++) {
                SysRoleMenu sysRoleMenu = new SysRoleMenu();
                sysRoleMenu.setRoleId(roleId);
                sysRoleMenu.setMenuId(Integer.parseInt(menuIds[i]));
                sysRoleMenu.save();
            }
        }
        renderText("赋权成功");
    }


    /**
     * 全部菜单树，并根据角色选中
     */
    public void menuTreePermissionChecked() {
        Integer id = getParaToInt(0);

        // 联合主键保证不重复
        List<SysRoleMenu> sysRoleMenus =
                SysRoleMenu.dao.find("select * from sys_role_menu where role_id = ? ", id);

        List<SysMenu> sysMenus = SysMenu.dao.findAll();

        // 非叶子 id 集合
        Set<Integer> pids = new HashSet<Integer>();
        for (SysMenu sysMenu : sysMenus) {
            pids.add(sysMenu.getPid());
        }


        List<Map<String, Object>> maps = new ArrayList<Map<String, Object>>();
        for (SysMenu sysMenu : sysMenus) {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("id", sysMenu.getId());
            map.put("pid", sysMenu.getPid());
            map.put("text", sysMenu.getName());
            map.put("iconCls", sysMenu.getIcon());
            map.put("state", "open");
            for (SysRoleMenu sysRoleMenu : sysRoleMenus) {
                // 中间表 有记录，且是 叶子
                if (sysRoleMenu.getMenuId() == sysMenu.getId() && !pids.contains(sysMenu.getId())) {
                    map.put("checked", true);
                    break;
                }
            }
            maps.add(map);
        }

        renderJson(maps);
    }


}
