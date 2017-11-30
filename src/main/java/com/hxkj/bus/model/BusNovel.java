package com.hxkj.bus.model;

import com.hxkj.bus.model.base.BaseBusNovel;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

/**
 * table name: bus_novel
 */
public class BusNovel extends BaseBusNovel<BusNovel> implements java.io.Serializable {

    public static final BusNovel dao = new BusNovel().dao();
    private static final long serialVersionUID = 1L;

    public Page<BusNovel> page(int pageNumber, int pageSize, String where) {

        String sqlSelect = " select * ";
        String sqlExceptSelect = " from bus_novel  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }

        return this.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
    }

    ;

}
