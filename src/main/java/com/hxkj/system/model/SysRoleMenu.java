package com.hxkj.system.model;

import com.hxkj.system.model.base.BaseSysRoleMenu;

import java.util.List;

/**
 * sys_role_menu 角色菜单中间表  model
 * @author  zhangchuang
 */
public class SysRoleMenu extends BaseSysRoleMenu<SysRoleMenu> {
    public static final SysRoleMenu dao = new SysRoleMenu().dao();


    /**
     * 根据 roleid 字段查询
     * @param roleId
     * @return
     */
    public List<SysRoleMenu> findByRoleId(Integer roleId) {
        String sql = "select * from sys_role_menu where role_id = ? ";
        return find(sql, roleId);
    }
}
