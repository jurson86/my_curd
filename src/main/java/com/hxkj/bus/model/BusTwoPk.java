package com.hxkj.bus.model;

import com.hxkj.bus.model.base.BaseBusTwoPk;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

/**
 * table name: bus_two_pk   多主键 代码生成测试
 */
public class BusTwoPk extends BaseBusTwoPk<BusTwoPk> implements java.io.Serializable {

    public static final BusTwoPk dao = new BusTwoPk().dao();
    private static final long serialVersionUID = 1L;

    public Page<BusTwoPk> page(int pageNumber, int pageSize, String where) {

        String sqlSelect = " select * ";
        String sqlExceptSelect = " from bus_two_pk  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }

        return this.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
    }

    ;

}
