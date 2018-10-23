package com.hxkj.auth.model;

import com.hxkj.auth.model.base.BaseAuthRoleMenu;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

import java.util.List;

/**
 * model table: auth_role_menu   角色权限中间表
 *
 * @author
 * @date 2018-06-20 18:56:48
 */
public class AuthRoleMenu extends BaseAuthRoleMenu<AuthRoleMenu> implements java.io.Serializable {

    public static final AuthRoleMenu dao = new AuthRoleMenu().dao();
    private static final long serialVersionUID = 1L;

    /**
     * 根据 roleid 字段查询
     *
     * @param roleId
     * @return
     */
    public List<AuthRoleMenu> findByRoleId(Long roleId) {
        String sql = "select * from auth_role_menu where role_id = ? ";
        return find(sql, roleId);
    }


    /**
     * 从 auth_role_menu 从查询 角色信息
     *
     * @param pageNumber
     * @param pageSize
     * @param where
     * @return
     */
    public Page<AuthRoleMenu> pageWithRoleInfo(int pageNumber, int pageSize, String where) {
        String sqlSelect = " SELECT arm.role_id,arm.menu_id, ar.role_name,ar.role_code,ar.role_desc, au.name as ope_name ";
        String sqlExceptSelect = " FROM auth_role_menu arm " +
                " left JOIN auth_role ar on ar.id = arm.role_id " +
                " left JOIN auth_user au on au.id = arm.user ";

        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        return this.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
    }
}
