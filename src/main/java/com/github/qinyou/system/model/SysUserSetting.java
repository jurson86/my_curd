package com.github.qinyou.system.model;

import com.github.qinyou.common.utils.StringUtils;
import com.github.qinyou.system.model.base.BaseSysUserSetting;
import com.jfinal.plugin.activerecord.Page;

/**
 * Generated model
 * DB: sys_user_setting  用户设置项
 *
 * @author zhangchuang
 * @since 2019-02-21 13:10:49
 */
@SuppressWarnings("serial")
public class SysUserSetting extends BaseSysUserSetting<SysUserSetting> {
    public static final SysUserSetting dao = new SysUserSetting().dao();

    /**
     * 分页查询
     *
     * @param pageNumber 第几页
     * @param pageSize   每页条数
     * @param where      查询条件
     * @return 分页数据
     */
    public Page<SysUserSetting> page(int pageNumber, int pageSize, String where) {
        String sqlSelect = " select * ";
        String sqlExceptSelect = " from sys_user_setting  ";
        if (StringUtils.notEmpty(where)) {
            sqlExceptSelect += " where " + where;
        }
        return this.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
    }

    /**
     * 根据用户名查询
     *
     * @param username
     * @return
     */
    public SysUserSetting findBySysUser(String username) {
        String sql = "select * from sys_user_setting where sysUser = ?  ";
        return findFirst(sql, username);
    }

}
