package com.hxkj.ordinaryUser.model;

import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;
import com.hxkj.ordinaryUser.model.base.BaseMarkdown;

/**
 * model table: markdown   markdown 文档
 * @author
 * @date 2018-06-18 18:25:03
 */
public class Markdown extends BaseMarkdown<Markdown> implements java.io.Serializable{

    private static final long serialVersionUID = 1L;
    public static final Markdown dao = new Markdown().dao();

    public Page<Markdown>  page(int pageNumber,int pageSize,String where ){
        String sqlSelect = " select id,title,tags,open,create_time ";
        String sqlExceptSelect = " from markdown  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        sqlExceptSelect+=" order by create_time desc";
        /*jfinal paginate 函数使用 select count() 语句，该函数在百万级别数据效率非常低，数据量大不应该使用jfinal分页封装 */
        return this.paginate(pageNumber,pageSize,sqlSelect,sqlExceptSelect);
    }

}
