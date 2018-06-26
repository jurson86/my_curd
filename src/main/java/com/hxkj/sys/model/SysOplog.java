package com.hxkj.sys.model;


import com.hxkj.sys.model.base.BaseSysOplog;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

import java.util.List;

/**
 * sys_oplog 操作日志表  model
 *
 * @author zhangchuang
 */
public class SysOplog extends BaseSysOplog<SysOplog> {
    public static final SysOplog dao = new SysOplog().dao();

    /**
     * 分页查询
     *
     * @param pageNumber
     * @param pageSize
     * @param where
     * @return
     */
    public Page<SysOplog> page(int pageNumber, int pageSize, String where) {
        String sqlSelect = " select so.*, su.name as user_name ";
        String sqlExceptSelect = " from sys_oplog  so LEFT JOIN auth_user  su on so.user_id = su.id  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        sqlExceptSelect += " order by so.create_time desc ";
        Page<SysOplog> sysOplogPage = SysOplog.dao.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
        return sysOplogPage;
    }

    /**
     * 条件查询
     *
     * @param where
     * @return
     */
    public List<SysOplog> findWhere(String where) {
        String sqlSelect = " select so.*, su.name as user_name ";
        String sqlExceptSelect = " from sys_oplog  so LEFT JOIN auth_user  su on so.user_id = su.id  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        sqlExceptSelect += "order by so.create_time desc";
        List<SysOplog> sysOplogs = SysOplog.dao.find(sqlSelect + sqlExceptSelect);
        return sysOplogs;
    }

}
