package com.github.qinyou.system.model;

import com.github.qinyou.common.utils.StringUtils;
import com.github.qinyou.system.model.base.BaseSysServiceLog;
import com.jfinal.plugin.activerecord.Page;

import java.util.List;

/**
 * Generated model
 * DB: sys_service_log  业务日志，程序主动记录的重要操作日志
 *
 * @author zhangchuang
 * @since 2019-02-21 13:10:49
 */
@SuppressWarnings("serial")
public class SysServiceLog extends BaseSysServiceLog<SysServiceLog> {
    public static final SysServiceLog dao = new SysServiceLog().dao();

    /**
     * 分页查询
     *
     * @param pageNumber
     * @param pageSize
     * @param where
     * @return
     */
    public Page<SysServiceLog> page(int pageNumber, int pageSize, String where) {
        String sqlSelect = " select * ";
        String sqlExceptSelect = " from sys_service_log  ";
        if (StringUtils.notEmpty(where)) {
            sqlExceptSelect += " where " + where;
        }
        sqlExceptSelect += " order by createTime desc ";
        return this.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
    }

    public Long findCountByWhere(String where) {
        String sql = " select count(1) as c from sys_service_log ";
        if (StringUtils.notEmpty(where)) {
            sql += " where " + where;
        }
        return findFirst(sql).getLong("c");
    }

    /**
     * 根据 where 条件查询
     *
     * @param where
     * @return
     */
    public List<SysServiceLog> findByWhere(String where) {
        String sql = " select * from sys_service_log ";
        if (StringUtils.notEmpty(where)) {
            sql += " where " + where;
        }
        return find(sql);
    }

}
