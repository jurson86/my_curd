package com.hxkj.bus.model;

import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;
import com.hxkj.bus.model.base.BaseBusNovelChapter;

/**
*  table name: bus_novel_chapter   
*/
public class BusNovelChapter extends BaseBusNovelChapter<BusNovelChapter> implements java.io.Serializable{

    private static final long serialVersionUID = 1L;
    public static final BusNovelChapter dao = new BusNovelChapter().dao();

    public Page<BusNovelChapter>  page(int pageNumber,int pageSize,String where ){

        String sqlSelect = " select * ";
        String sqlExceptSelect = " from bus_novel_chapter  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }

        return this.paginate(pageNumber,pageSize,sqlSelect,sqlExceptSelect);
    };

}
