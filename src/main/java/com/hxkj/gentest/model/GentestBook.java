package com.hxkj.gentest.model;

import com.hxkj.gentest.model.base.BaseGentestBook;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

/**
 * table name: gentest_book   代码生成测试（普通表）
 */
public class GentestBook extends BaseGentestBook<GentestBook> implements java.io.Serializable {

    public static final GentestBook dao = new GentestBook().dao();
    private static final long serialVersionUID = 1L;

    public Page<GentestBook> page(int pageNumber, int pageSize, String where) {

        String sqlSelect = " select * ";
        String sqlExceptSelect = " from gentest_book  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }

        return this.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
    }

    ;

}
