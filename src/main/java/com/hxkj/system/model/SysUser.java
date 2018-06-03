package com.hxkj.system.model;

import com.hxkj.system.model.base.BaseSysUser;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

/**
 * sys_user 用户表  model
 *
 * @author zhangchuang
 */
public class SysUser extends BaseSysUser<SysUser> {
    public static final SysUser dao = new SysUser().dao();

    /**
     * 根据用户名查询
     *
     * @param username
     * @return
     */
    public SysUser findByUsername(String username) {
        String sql = "SELECT"
                + " su.*,"
                + " so.org_name AS orgName, "
                + " so.id as orgId "
                + " FROM sys_user su"
                + " LEFT JOIN sys_org so ON su.org_id = so.id"
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
    public SysUser findByUsernameAndPassword(String username, String password) {
        String sql = "SELECT"
                + " su.*,"
                + " so.org_name AS orgName, "
                + " so.id as orgId "
                + " FROM sys_user su"
                + " LEFT JOIN sys_org so ON su.org_id = so.id"
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
    public Page<SysUser> page(int pageNumber, int pageSize, String where) {
        String sqlSelect = " select su.*, so.org_name as orgName ";
        String sqlExceptSelect = " from sys_user su" +
                " LEFT JOIN sys_org so on su.org_id = so.id ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        sqlExceptSelect += "order by su.create_time";
        Page<SysUser> sysUsers = SysUser.dao.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
        return sysUsers;
    }
}
