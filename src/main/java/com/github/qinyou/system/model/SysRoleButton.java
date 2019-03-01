package com.github.qinyou.system.model;

import com.github.qinyou.common.utils.StringUtils;
import com.github.qinyou.system.model.base.BaseSysRoleButton;
import com.jfinal.plugin.activerecord.Page;

/**
 * Generated model
 * DB: sys_role_button  角色 菜单按钮中间表
 * @author zhangchuang
 * @since 2019-02-28 19:22:25
 */
@SuppressWarnings("serial")
public class SysRoleButton extends BaseSysRoleButton<SysRoleButton> {
    public static final SysRoleButton dao = new SysRoleButton().dao();

    /**
     * 分页查询
     * @param pageNumber 第几页
     * @param pageSize   每页条数
     * @param where      查询条件
     * @return 分页数据
     */
    public Page<SysRoleButton>  page(int pageNumber,int pageSize,String where ){
        String sqlSelect = " select * ";
        String sqlExceptSelect = " from sys_role_button  ";
        if (StringUtils.notEmpty(where)) {
            sqlExceptSelect += " where " + where;
        }
        return this.paginate(pageNumber,pageSize,sqlSelect,sqlExceptSelect);
    }

}
