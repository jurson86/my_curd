package com.hxkj.data.model;

import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;
import com.hxkj.data.model.base.BaseDataCounty;

/**
 * model table: data_county   县区数据表
 * @author
 * @date 2018-06-24 20:42:55
 */
public class DataCounty extends BaseDataCounty<DataCounty> implements java.io.Serializable{

    private static final long serialVersionUID = 1L;
    public static final DataCounty dao = new DataCounty().dao();

    public Page<DataCounty>  page(int pageNumber,int pageSize,String where ){
        String sqlSelect = " select o.*, c.cname ";
        String sqlExceptSelect = " from data_county  o left join data_city c on o.cid = c.cid ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        /*jfinal paginate 函数使用 select count() 语句，该函数在百万级别数据效率非常低，数据量大不应该使用jfinal分页封装 */
        return this.paginate(pageNumber,pageSize,sqlSelect,sqlExceptSelect);
    }

}
