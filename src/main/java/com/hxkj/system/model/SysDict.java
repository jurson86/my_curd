package com.hxkj.system.model;

import com.hxkj.system.model.base.BaseSysDict;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

/**
 * sys_dict 字典枚举值表  model
 * @author  zhangchuang
 */
public class SysDict extends BaseSysDict<SysDict> implements java.io.Serializable {

    public static final SysDict dao = new SysDict().dao();

    /**
     * 分页查询
     * @param pageNumber
     * @param pageSize
     * @param where 查询条件
     * @return
     */
    public Page<SysDict> page(int pageNumber, int pageSize, String where) {
        String sqlSelect = " select * ";
        String sqlExceptSelect = " from sys_dict  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        return this.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
    }

}
