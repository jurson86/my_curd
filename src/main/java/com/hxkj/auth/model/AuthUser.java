package com.hxkj.auth.model;

import com.hxkj.auth.model.base.BaseAuthUser;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

/**
 * model table: auth_user   系统用户
 *
 * @author
 * @date 2018-06-20 18:56:48
 */
public class AuthUser extends BaseAuthUser<AuthUser> implements java.io.Serializable {

    public static final AuthUser dao = new AuthUser().dao();
    private static final long serialVersionUID = 1L;

    /**
     * 根据用户名查询
     *
     * @param username
     * @return
     */
    public AuthUser findByUsername(String username) {
        String sql = "SELECT"
                + " su.*,"
                + " so.name AS orgName, "
                + " so.id as orgId "
                + " FROM auth_user su"
                + " LEFT JOIN auth_org so ON su.org_id = so.id"
                + " where username = ?   ";
        return findFirst(sql, username);
    }


    /**
     * 根据用户名密码查询
     *
     * @param username
     * @param password
     * @return
     */
    public AuthUser findByUsernameAndPassword(String username, String password) {
        String sql = "SELECT"
                + " su.*,"
                + " so.org_name AS orgName, "
                + " so.id as orgId "
                + " FROM auth_user su"
                + " LEFT JOIN auth_org so ON su.org_id = so.id"
                + " where username = ? and password = ?   ";
        return findFirst(sql, username, password);
    }

    /**
     * 分页查询
     *
     * @param pageNumber
     * @param pageSize
     * @param where
     * @return
     */
    public Page<AuthUser> page(int pageNumber, int pageSize, String where) {
        String sqlSelect = " select su.*, so.name as orgName ";
        String sqlExceptSelect = " from auth_user su" +
                " LEFT JOIN auth_org so on su.org_id = so.id ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        sqlExceptSelect += "order by su.create_time";
        Page<AuthUser> authUsers = AuthUser.dao.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
        return authUsers;
    }

}
