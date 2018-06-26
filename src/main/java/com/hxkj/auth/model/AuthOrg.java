package com.hxkj.auth.model;


import com.hxkj.auth.model.base.BaseAuthOrg;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

import java.util.List;

/**
 * model table: auth_org   组织机构
 *
 * @author
 * @date 2018-06-20 18:56:48
 */
public class AuthOrg extends BaseAuthOrg<AuthOrg> implements java.io.Serializable {

    public static final AuthOrg dao = new AuthOrg().dao();
    private static final long serialVersionUID = 1L;

    public Page<AuthOrg> page(int pageNumber, int pageSize, String where) {
        String sqlSelect = " select * ";
        String sqlExceptSelect = " from auth_org  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        return this.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
    }

    /**
     * 条件查询
     *
     * @param where
     * @return
     */
    public List<AuthOrg> findWhere(String where) {
        String sqlSelect = " select * ";
        String sqlExceptSelect = " from auth_org  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        sqlExceptSelect += "  order by   sort asc ";
        List<AuthOrg> authOrgs = AuthOrg.dao.find(sqlSelect + sqlExceptSelect);
        return authOrgs;
    }

}
