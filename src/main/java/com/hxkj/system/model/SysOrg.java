package com.hxkj.system.model;

import com.hxkj.system.model.base.BaseSysOrg;
import com.jfinal.kit.StrKit;

import java.util.List;

/**
 * sys_org 组织机构表  model
 *
 * @author zhangchuang
 */
public class SysOrg extends BaseSysOrg<SysOrg> {
    public static final SysOrg dao = new SysOrg().dao();

    /**
     * 条件查询
     *
     * @param where
     * @return
     */
    public List<SysOrg> findWhere(String where) {
        String sqlSelect = " select * ";
        String sqlExceptSelect = " from sys_org  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        sqlExceptSelect += " order by   sort asc ";
        List<SysOrg> sysOrgs = SysOrg.dao.find(sqlSelect + sqlExceptSelect);
        return sysOrgs;
    }
}
