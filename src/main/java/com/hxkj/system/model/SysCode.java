package com.hxkj.system.model;

import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;
import com.hxkj.system.model.base.BaseSysCode;

/**
*  table name: sys_code   
*/
public class SysCode extends BaseSysCode<SysCode> implements java.io.Serializable{

    private static final long serialVersionUID = 1L;
    public static final SysCode dao = new SysCode().dao();

    public Page<SysCode>  page(int pageNumber,int pageSize,String where ){

        String sqlSelect = " select * ";
        String sqlExceptSelect = " from sys_code  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }

        return this.paginate(pageNumber,pageSize,sqlSelect,sqlExceptSelect);
    };

}
