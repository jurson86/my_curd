package com.hxkj.data.model;

import com.hxkj.data.model.base.BaseDataDict;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

/**
 * sys_dict 字典枚举值表  model
 *
 * @author zhangchuang
 */
public class DataDict extends BaseDataDict<DataDict> implements java.io.Serializable {

    public static final DataDict dao = new DataDict().dao();

    /**
     * 分页查询
     *
     * @param pageNumber
     * @param pageSize
     * @param where      查询条件
     * @return
     */
    public Page<DataDict> page(int pageNumber, int pageSize, String where) {
        String sqlSelect = " select * ";
        String sqlExceptSelect = " from data_dict  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        sqlExceptSelect += " order by dict_type asc ";
        return this.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
    }

}
