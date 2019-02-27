package com.github.qinyou.system.model;

import com.github.qinyou.common.utils.StringUtils;
import com.github.qinyou.system.model.base.BaseSysMenu;
import com.jfinal.plugin.activerecord.Page;

import java.util.ArrayList;
import java.util.List;

/**
 * Generated model
 * DB: sys_menu  系统菜单
 *
 * @author zhangchuang
 * @since 2019-02-21 13:10:49
 */
@SuppressWarnings("serial")
public class SysMenu extends BaseSysMenu<SysMenu> {
    public static final SysMenu dao = new SysMenu().dao();

    /**
     * 分页查询
     *
     * @param pageNumber 第几页
     * @param pageSize   每页条数
     * @param where      查询条件
     * @return 分页数据
     */
    public Page<SysMenu> page(int pageNumber, int pageSize, String where) {
        String sqlSelect = " select * ";
        String sqlExceptSelect = " from sys_menu  ";
        if (StringUtils.notEmpty(where)) {
            sqlExceptSelect += " where " + where;
        }
        return this.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
    }

    /**
     * 通过字段查询
     *
     * @param fieldName
     * @param fieldValue
     * @return
     */
    public SysMenu findByProperty(String fieldName, Object fieldValue) {
        String sql = "select * from sys_menu where " + fieldName + " = ?";
        return findFirst(sql, fieldValue);
    }


    public List<SysMenu> findAllSort() {
        String sql = "select * from sys_menu order by sortNum,id";
        return find(sql);
    }

    /**
     * 通过 角色ids (数字数组，逗号分隔字符串) 查询菜单
     *
     * @param roleIds
     * @return
     */
    public List<SysMenu> findByRoleIds(String roleIds) {
        List<SysMenu> result = new ArrayList<>();
        if (StringUtils.notEmpty(roleIds)) {
            String sql = "select a.* from sys_menu a, sys_role_menu b where a.id = b.sysMenuId and b.sysRoleId in ('" + roleIds + "')";
            result = find(sql);
        }
        return result;
    }
}
