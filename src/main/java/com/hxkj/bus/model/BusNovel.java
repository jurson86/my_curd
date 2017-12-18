package com.hxkj.bus.model;

import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;
import com.hxkj.bus.model.base.BaseBusNovel;

/**
*  table name: bus_novel   代码生成测试表--小说表
*/
public class BusNovel extends BaseBusNovel<BusNovel> implements java.io.Serializable{

    private static final long serialVersionUID = 1L;
    public static final BusNovel dao = new BusNovel().dao();

    public Page<BusNovel>  page(int pageNumber,int pageSize,String where ){

        String sqlSelect = " select * ";
        String sqlExceptSelect = " from bus_novel  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }

        return this.paginate(pageNumber,pageSize,sqlSelect,sqlExceptSelect);
    };

}
