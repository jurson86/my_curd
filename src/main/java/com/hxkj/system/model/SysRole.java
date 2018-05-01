package com.hxkj.system.model;

import com.hxkj.system.model.base.BaseSysRole;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

import java.util.List;

/**
 * sys_role 角色表  model
 * @author  zhangchuang
 */
public class SysRole extends BaseSysRole<SysRole> {
    public static final SysRole dao = new SysRole().dao();

    /**
     * 查询所有
     * @return
     */
    public List<SysRole> findAll() {
        String sql = "select * from sys_role order by sort";
        return find(sql);
    }

    /**
     * 分页查询
     * @param pageNumber
     * @param pageSize
     * @param where
     * @return
     */
    public Page<SysRole> page(int pageNumber, int pageSize, String where) {
        String sqlSelect = " select * ";
        String sqlExceptSelect = " from sys_role   ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        sqlExceptSelect += "order by   sort  ";
        Page<SysRole> sysMenus = SysRole.dao.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
        return sysMenus;
    }
}
