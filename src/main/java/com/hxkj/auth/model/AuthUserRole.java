package com.hxkj.auth.model;

import com.hxkj.auth.model.base.BaseAuthUserRole;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

import java.util.List;

/**
 * model table: auth_user_role   用户角色中间表
 *
 * @author
 * @date 2018-06-20 18:56:48
 */
public class AuthUserRole extends BaseAuthUserRole<AuthUserRole> implements java.io.Serializable {

    public static final AuthUserRole dao = new AuthUserRole().dao();
    private static final long serialVersionUID = 1L;

    /**
     * 根据用户id 查询 用户角色
     *
     * @param userId
     * @return
     */
    public AuthUserRole findRolesByUserId(Long userId) {
        String roleSql = "SELECT"
                + " GROUP_CONCAT(sur.role_id) AS roleIds,"
                + " GROUP_CONCAT(sr.role_name) AS roleNames"
                + " FROM auth_user_role sur"
                + " LEFT JOIN auth_role sr ON sur.role_id = sr.id"
                + " WHERE user_id = ? "
                + " GROUP BY sur.user_id";
        return findFirst(roleSql, userId);
    }

    /**
     * 根据 userid 查询
     *
     * @param userId
     * @return
     */
    public List<AuthUserRole> findUserRolesByUserId(Long userId) {
        String sql = "select * from auth_user_role where user_id = ? ";
        return find(sql, userId);
    }

    public Page<AuthUserRole> pageWithUserInfo(int pageNumber, int pageSize, String where) {
        String sqlSelect = " SELECT aur.*, au.username, au.name, au.job, au.gender, au.disabled, ao.name as org_name, au2.name as ope_name ";
        String sqlExceptSelect = " FROM auth_user_role aur " +
                "left JOIN auth_user au on aur.user_id= au.id " +
                "left JOIN auth_org ao on au.org_id = ao.id  " +
                " left JOIN auth_user au2 on au2.id = aur.user  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        return this.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
    }

}
