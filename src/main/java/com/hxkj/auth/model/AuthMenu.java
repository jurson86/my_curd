package com.hxkj.auth.model;

import com.google.common.base.Joiner;
import com.hxkj.auth.model.base.BaseAuthMenu;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * model table: auth_menu   菜单
 *
 * @author
 * @date 2018-06-20 18:56:48
 */
public class AuthMenu extends BaseAuthMenu<AuthMenu> implements java.io.Serializable {

    public static final AuthMenu dao = new AuthMenu().dao();
    private static final long serialVersionUID = 1L;

    public List<AuthMenu> findAll() {
        // 不查询 create_time   last_edit_time 字段
        String sql = " select b.id,b.name,b.url,b.icon,b.sort,b.pid from auth_menu b ";
        return find(sql);
    }

    public List<AuthMenu> getChildren() {
        return get("children");
    }

    /**
     * 通过 角色ids (数字数组，逗号分隔字符串) 查询菜单
     *
     * @param roleIds
     * @return
     */
    public List<AuthMenu> findByRoleIds(String roleIds) {
        List<AuthMenu> result = new ArrayList<AuthMenu>();
        if (StrKit.notBlank(roleIds)) {
            result = find("select distinct b.id,b.name,b.url,b.icon,b.sort,b.pid " +
                    " from auth_role_menu a" +
                    " join  auth_menu b" +
                    " on a.menu_id=b.id" +
                    " where a.role_id in(" + roleIds + ")");
        }
        return result;
    }


    /**
     * 查询菜单
     *
     * @param where 查询条件
     * @return
     */
    public List<AuthMenu> findWhere(String where) {
        String sqlSelect = " select * ";
        String sqlExceptSelect = " from auth_menu  ";

        List<AuthMenu> authMenus;

        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
            authMenus = AuthMenu.dao.find(sqlSelect + sqlExceptSelect);

            // 操作相当复杂，但是前台 treegrid filter 没有找到好方法 有子树没有父树
            // 查询 相关子节点
            Set<Long> idsUse = new HashSet<>();
            for (AuthMenu authMenu : authMenus) {
                idsUse.add(authMenu.getId());
            }
            Set<Long> ids = new HashSet<>();
            for (Long id : idsUse) {
                Record record = Db.findFirst("select authMenuTreeIds(?) as childrenIds ", id);
                String[] idsAry = record.getStr("childrenIds").split(",");
                for (String idsAryItem : idsAry) {
                    ids.add(Long.parseLong(idsAryItem));
                }
            }
            String allreferIds = Joiner.on(",").join(ids);
            String sql = " select *  from auth_menu where id in (" + allreferIds + ")  order by   sort asc";
            authMenus = AuthMenu.dao.find(sql);

        } else {
            authMenus = AuthMenu.dao.find(sqlSelect + sqlExceptSelect + " order by sort asc");
        }
        return authMenus;
    }

}
