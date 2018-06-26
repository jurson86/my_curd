package com.hxkj.data.model;

import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;
import com.hxkj.data.model.base.BaseDataCity;

/**
 * model table: data_city   城市数据表
 * @author
 * @date 2018-06-24 20:42:55
 */
public class DataCity extends BaseDataCity<DataCity> implements java.io.Serializable{

    private static final long serialVersionUID = 1L;
    public static final DataCity dao = new DataCity().dao();

    public Page<DataCity>  page(int pageNumber,int pageSize,String where ){
        String sqlSelect = " select c.* , p.pname  ";
        String sqlExceptSelect = " from data_city c left join data_province p on c.pid = p.pid";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        return this.paginate(pageNumber,pageSize,sqlSelect,sqlExceptSelect);
    }

}
