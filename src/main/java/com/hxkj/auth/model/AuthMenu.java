package com.hxkj.auth.model;

import com.hxkj.auth.model.base.BaseAuthMenu;
import com.jfinal.kit.StrKit;

import java.util.ArrayList;
import java.util.List;

/**
 * model table: auth_menu   菜单
 *
 * @author
 * @date 2018-06-20 18:56:48
 */
public class AuthMenu extends BaseAuthMenu<AuthMenu> implements java.io.Serializable {

    public static final AuthMenu dao = new AuthMenu().dao();
    private static final long serialVersionUID = 1L;

    public List<AuthMenu> findAll() {
        String sql = "select * from auth_menu order by  sort asc";
        return find(sql);
    }

    public List<AuthMenu> getChildren() {
        return get("children");
    }

    /**
     * 通过 角色ids (数字数组，逗号分隔字符串) 查询菜单
     *
     * @param roleIds
     * @return
     */
    public List<AuthMenu> findByRoleIds(String roleIds) {
        List<AuthMenu> result = new ArrayList<AuthMenu>();
        if (StrKit.notBlank(roleIds)) {
            result = find("select distinct b.*" +
                    " from auth_role_menu a" +
                    " join  auth_menu b" +
                    " on a.menu_id=b.id" +
                    " where a.role_id in(" + roleIds + ")");
        }
        return result;
    }


    /**
     * 查询菜单
     *
     * @param where 查询条件
     * @return
     */
    public List<AuthMenu> findWhere(String where) {
        String sqlSelect = " select * ";
        String sqlExceptSelect = " from auth_menu  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        sqlExceptSelect += " order by   sort asc ";
        List<AuthMenu> authMenus = AuthMenu.dao.find(sqlSelect + sqlExceptSelect);
        return authMenus;
    }

}
