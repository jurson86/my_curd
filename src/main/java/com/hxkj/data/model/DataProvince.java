package com.hxkj.data.model;

import com.hxkj.data.model.base.BaseDataProvince;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

/**
 * model table: data_province   省份数据表
 *
 * @author
 * @date 2018-06-24 20:42:55
 */
public class DataProvince extends BaseDataProvince<DataProvince> implements java.io.Serializable {

    public static final DataProvince dao = new DataProvince().dao();
    private static final long serialVersionUID = 1L;

    public Page<DataProvince> page(int pageNumber, int pageSize, String where) {
        String sqlSelect = " select * ";
        String sqlExceptSelect = " from data_province  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        /*jfinal paginate 函数使用 select count() 语句，该函数在百万级别数据效率非常低，数据量大不应该使用jfinal分页封装 */
        return this.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
    }

}
