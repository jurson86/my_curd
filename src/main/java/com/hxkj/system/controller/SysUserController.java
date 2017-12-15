package com.hxkj.system.controller;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.Identities;
import com.hxkj.common.util.SearchSql;
import com.hxkj.system.model.SysRole;
import com.hxkj.system.model.SysUser;
import com.hxkj.system.model.SysUserRole;
import com.jfinal.aop.Before;
import com.jfinal.kit.HashKit;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.tx.Tx;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class SysUserController extends BaseController {


    public void index() {
        render("system/sysUser.html");
    }


    @Before(SearchSql.class)
    public void query() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);

        String sqlSelect = " select su.*, so.org_name as orgName ";
        String sqlExceptSelect = " from sys_user su" +
                " LEFT JOIN sys_org so on su.org_id = so.id ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }

        sqlExceptSelect += "order by su.create_time";
        Page<SysUser> sysUsers = SysUser.dao.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);

        renderDatagrid(sysUsers);
    }

    public void newModel() {
        String id = getPara("id");
        if (id != null) {
            SysUser sysUser = SysUser.dao.findById(id);
            setAttr("sysUser", sysUser);
        }
        render("system/sysUser_form.html");
    }

    public void addAction() {
        SysUser sysUser = getBean(SysUser.class, "");

        sysUser.setId(Identities.uuid2());

        String password = HashKit.sha1(sysUser.getPassword());
        sysUser.setPassword(password);

        boolean saveFlag = sysUser.save();
        if (saveFlag) {
            renderText(Constant.ADD_SUCCESS);
        } else {
            renderText(Constant.ADD_FAIL);
        }
    }

    public void updateAction() {
        SysUser sysUser = getBean(SysUser.class, "");
        String id = sysUser.getId();
        //SysUser oldSysUser = sysUser.dao().findById(id);

        //System.out.println("*************************");
        //sysUser.getPassword();  // 此处报出 异常  dao 只允许调用查询方法
        //System.out.println("*************************");


        // 密码变更
        /*if(!oldSysUser.getPassword().equals(password)){
            password = HashKit.sha1(password);
			sysUser.setPassword(password);
		}*/
        String password = sysUser.getPassword();
        // 认为密码改变
        if (password.length() < 20) {
            password = HashKit.sha1(password);
            sysUser.setPassword(password);
        }

        boolean updateFlag = sysUser.update();

        if (updateFlag) {
            renderText(Constant.UPDATE_SUCCESS);
        } else {
            renderText(Constant.UPDATE_FAIL);
        }
    }

    @Before(Tx.class)
    public void deleteAction() {
        String id = getPara("id");

        // 用户表
        String deleteSql = "delete from sys_user where id = ?";
        Db.update(deleteSql, id);

        //用户角色表
        deleteSql = "delete from sys_user_role where user_id = ?";
        Db.update(deleteSql, id);

        renderText(Constant.DELETE_SUCCESS);
    }


    /**
     * 用户赋予角色
     */
    @Before(Tx.class)
    public void giveRole() {
        String userId = getPara("userId");
        String roleIdstr = getPara("roleIds");
        String deleteSql = "delete from  sys_user_role where user_id = ?";
        Db.update(deleteSql, userId);

        String[] roleIds = roleIdstr.split(";");
        for (int i = 0; i < roleIds.length; i++) {
            SysUserRole sysUserRole = new SysUserRole();
            sysUserRole.setUserId(userId);
            sysUserRole.setRoleId(Integer.parseInt(roleIds[i]));
            sysUserRole.save();
        }

        renderText("赋予角色成功");
    }


    /**
     * 全部菜单树，并根据角色选中
     */
    public void roleListChecked() {
        String id = getPara(0);

        List<SysUserRole> sysUserRoles =
                SysUserRole.dao.find("select * from sys_user_role where user_id = ? ", id);

        List<SysRole> sysRoles = SysRole.dao.findAll();
        List<Map<String, Object>> maps = new ArrayList<Map<String, Object>>();
        for (SysRole sysRole : sysRoles) {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("id", sysRole.getId());
            map.put("text", sysRole.getRoleName());
            map.put("state", "open");
            map.put("iconCls", "icon-blank");  // 不显示图标
            for (SysUserRole sysUserRole : sysUserRoles) {
                if (sysUserRole.getRoleId() == sysRole.getId()) {
                    map.put("checked", true);
                    break;
                }
            }
            maps.add(map);
        }

        renderJson(maps);
    }

}
