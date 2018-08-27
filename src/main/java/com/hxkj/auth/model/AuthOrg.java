package com.hxkj.auth.model;


import com.google.common.base.Joiner;
import com.hxkj.auth.model.base.BaseAuthOrg;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

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

        List<AuthOrg> authOrgs;
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
            authOrgs = AuthOrg.dao.find(sqlSelect + sqlExceptSelect);

            // 操作相当复杂，但是前台 treegrid filter 没有找到好方法, 有子树没有父树
            // 查询 相关子节点
            Set<Long> idsUse = new HashSet<>();
            for (AuthOrg authOrg : authOrgs) {
                idsUse.add(authOrg.getId());
            }
            Set<Long> ids = new HashSet<>();
            for (Long id : idsUse) {
                Record record = Db.findFirst("select authOrgTreeIds(?) as childrenIds ", id);
                String[] idsAry = record.getStr("childrenIds").split(",");
                for (String idsAryItem : idsAry) {
                    ids.add(Long.parseLong(idsAryItem));
                }
            }
            String allreferIds = Joiner.on(",").join(ids);
            String sql = " select *  from auth_org where id in (" + allreferIds + ")  order by   sort asc";
            authOrgs = AuthOrg.dao.find(sql);

        } else {
            authOrgs = AuthOrg.dao.find(sqlSelect + sqlExceptSelect + "  order by   sort asc ");
        }
        return authOrgs;
    }

}
