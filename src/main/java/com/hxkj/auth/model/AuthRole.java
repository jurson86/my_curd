package com.hxkj.auth.model;

import com.hxkj.auth.model.base.BaseAuthRole;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

import java.util.List;

/**
 * model table: auth_role   角色
 *
 * @author
 * @date 2018-06-20 18:56:48
 */
public class AuthRole extends BaseAuthRole<AuthRole> implements java.io.Serializable {

    public static final AuthRole dao = new AuthRole().dao();
    private static final long serialVersionUID = 1L;

    /**
     * 查询所有
     *
     * @return
     */
    public List<AuthRole> findAll() {
        String sql = "select * from auth_role order by sort";
        return find(sql);
    }

    /**
     * 分页查询
     *
     * @param pageNumber
     * @param pageSize
     * @param where
     * @return
     */
    public Page<AuthRole> page(int pageNumber, int pageSize, String where) {
        String sqlSelect = " select * ";
        String sqlExceptSelect = " from auth_role   ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        sqlExceptSelect += "order by   sort  ";
        Page<AuthRole> authMenus = AuthRole.dao.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
        return authMenus;
    }

}
