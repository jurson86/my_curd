package com.hxkj.system.model;

import com.hxkj.system.model.base.BaseSysMenu;
import com.jfinal.kit.StrKit;

import java.util.ArrayList;
import java.util.List;

/**
 * sys_menu 菜单表  model
 * @author  zhangchuang
 */
public class SysMenu extends BaseSysMenu<SysMenu> {
    public static final SysMenu dao = new SysMenu().dao();

    public List<SysMenu> findAll() {
        String sql = "select * from sys_menu order by  sort asc";
        return find(sql);
    }

    public List<SysMenu> getChildren() {
        return get("children");
    }

    /**
     * 通过 角色ids (数字数组，逗号分隔字符串) 查询菜单
     * @param roleIds
     * @return
     */
    public List<SysMenu> findByRoleIds(String roleIds) {
        List<SysMenu> result = new ArrayList<SysMenu>();
        if (StrKit.notBlank(roleIds)) {
            result = find("select distinct b.*" +
                    " from sys_role_menu a" +
                    " join sys_menu b" +
                    " on a.menu_id=b.id" +
                    " where a.role_id in(" + roleIds + ")");
        }
        return result;
    }


    /**
     * 查询菜单
     * @param where 查询条件
     * @return
     */
    public List<SysMenu> findWhere(String where) {
        String sqlSelect = " select * ";
        String sqlExceptSelect = " from sys_menu  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        sqlExceptSelect += " order by   sort asc ";
        List<SysMenu> sysMenus = SysMenu.dao.find(sqlSelect + sqlExceptSelect);
        return sysMenus;
    }


}
