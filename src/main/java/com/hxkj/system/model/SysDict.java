package com.hxkj.system.model;

import com.hxkj.system.model.base.BaseSysDict;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

/**
 * table name: sys_dict
 */
public class SysDict extends BaseSysDict<SysDict> implements java.io.Serializable {

    public static final SysDict dao = new SysDict().dao();
    private static final long serialVersionUID = 1L;

    public Page<SysDict> page(int pageNumber, int pageSize, String where) {

        String sqlSelect = " select * ";
        String sqlExceptSelect = " from sys_dict  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }

        return this.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
    }

}
