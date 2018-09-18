package com.hxkj.sys.model;

import com.hxkj.sys.model.base.BaseSysNotification;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

/**
 * model table: sys_notification   通知主表
 * 过期时间 和 必死 时间 用于控制 表记录行数不过大
 *
 * @author
 * @date 2018-09-17 19:18:06
 */
public class SysNotification extends BaseSysNotification<SysNotification> implements java.io.Serializable {

    private static final long serialVersionUID = 1L;
    public static final SysNotification dao = new SysNotification().dao();

    public Page<SysNotification> page(int pageNumber, int pageSize, String where) {
        String sqlSelect = " select * ";
        String sqlExceptSelect = " from sys_notification  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        /*jfinal paginate 函数使用 select count() 语句，该函数在百万级别数据效率非常低，数据量大不应该使用jfinal分页封装 */
        return this.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
    }

}
