package com.hxkj.gentest.model;

import com.hxkj.gentest.model.base.BaseGentestMulpktable;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

/**
 * table name: gentest_mulpktable   代码生成测试（多个主键 表）
 */
public class GentestMulpktable extends BaseGentestMulpktable<GentestMulpktable> implements java.io.Serializable {

    public static final GentestMulpktable dao = new GentestMulpktable().dao();
    private static final long serialVersionUID = 1L;

    public Page<GentestMulpktable> page(int pageNumber, int pageSize, String where) {

        String sqlSelect = " select * ";
        String sqlExceptSelect = " from gentest_mulpktable  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }

        return this.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
    }

}
