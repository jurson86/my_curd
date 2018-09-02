package com.hxkj.auth.controller;

import com.google.common.base.Joiner;
import com.hxkj.auth.model.*;
import com.hxkj.common.constant.Constant;
import com.hxkj.common.controller.BaseController;
import com.hxkj.common.util.search.SearchSql;
import com.jfinal.aop.Before;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.tx.Tx;

import java.util.*;

public class AuthRoleController extends BaseController {

    /**
     * 列表页
     */
    public void index() {
        render("auth/authRole.html");
    }

    /**
     * 列表页数据
     */
    @Before(SearchSql.class)
    public void query() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);
        Page<AuthRole> authMenus = AuthRole.dao.page(pageNumber, pageSize, where);
        renderDatagrid(authMenus);
    }


    /**
     * 新增 或者 编辑  form
     */
    public void newModel() {
        Long id = getParaToLong("id");
        if (id != null) {
            AuthRole authRole = AuthRole.dao.findById(id);
            setAttr("authRole", authRole);
        }
        render("auth/authRole_form.html");
    }


    /**
     * 新增
     */
    public void addAction() {
        AuthRole authRole = getBean(AuthRole.class, "");
        authRole.setCreateTime(new Date());
        boolean saveFlag = authRole.save();
        if (saveFlag) {
            renderText(Constant.ADD_SUCCESS);
        } else {
            renderText(Constant.ADD_FAIL);
        }
    }

    /**
     * 修改
     */
    public void updateAction() {
        AuthRole authRole = getBean(AuthRole.class, "");
        authRole.setLastEditTime(new Date());
        boolean updateFlag = authRole.update();
        if (updateFlag) {
            renderText(Constant.UPDATE_SUCCESS);
        } else {
            renderText(Constant.UPDATE_FAIL);
        }
    }


    /**
     * 删除
     */
    @Before(Tx.class)
    public void deleteAction() {
        Long id = getParaToLong("id");
        // 删除角色
        String deleteSql = "delete from auth_role where id = ?";
        Db.update(deleteSql, id);
        // 删除 角色菜单中间表
        deleteSql = "delete from auth_role_menu where role_id = ?";
        Db.update(deleteSql, id);
        // 删除用户角色表
        deleteSql = "delete from auth_user_role where role_id = ?";
        Db.update(deleteSql, id);
        renderText(Constant.DELETE_SUCCESS);
    }


    /**
     * 打开赋予角色 的窗口
     */
    public void openGivePermissionModel(){
        setAttr("roleId",getPara("id"));
        render("auth/authRole_menu.html");
    }

    /**
     * 用户赋权限
     */
    @Before(Tx.class)
    public void givePermission() {
        Long roleId = getParaToLong("roleId");
        String permissIds = getPara("permissIds");
        // 删除 角色原有菜单
        String deleteSql = "delete from  auth_role_menu where role_id = ?";
        Db.update(deleteSql, roleId);

        // 添加 角色新菜单
        AuthUser authUser = getSessionUser();
        if (StrKit.notBlank(permissIds)) {
            String[] menuIds = permissIds.split(";");
            for (int i = 0; i < menuIds.length; i++) {
                AuthRoleMenu authRoleMenu = new AuthRoleMenu();
                authRoleMenu.setRoleId(roleId);
                authRoleMenu.setMenuId(Long.parseLong(menuIds[i]));
                authRoleMenu.setUser(authUser.getId());
                authRoleMenu.save();
            }
        }

        // 添加日志
        AuthRole authRole= AuthRole.dao.findById(roleId);
        List<AuthMenu> authMenus = AuthMenu.dao.find("select * from auth_menu where id in ("+permissIds.replaceAll(";",",")+")");
        List<String> menuNames = new ArrayList<>();
        for(AuthMenu authMenu: authMenus){
            menuNames.add(authMenu.getName());
        }
        String menuNamesStr = Joiner.on(",").join(menuNames);
        System.out.println("-----------"+("角色: "+authRole.getRoleName()+", 关联菜单: "+menuNamesStr));
        addOpLog("角色: "+authRole.getRoleName()+", 关联菜单: "+menuNamesStr);


        renderText("赋权成功");
    }


    /**
     * 全部菜单树，并根据角色选中
     */
    public void menuTreePermissionChecked() {
        Long id = getParaToLong("roleId");
        // 角色菜单中间表数据
        List<AuthRoleMenu> authRoleMenus = AuthRoleMenu.dao.findByRoleId(id);
        // 全部菜单
        List<AuthMenu> authMenus = AuthMenu.dao.findAll();

        // 非叶子 菜单 id 集
        Set<Long> pids = new HashSet<Long>();
        for (AuthMenu authMenu : authMenus) {
            pids.add(authMenu.getPid());
        }

        List<Map<String, Object>> maps = new ArrayList<Map<String, Object>>();
        for (AuthMenu authMenu : authMenus) {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("id", authMenu.getId());
            map.put("pid", authMenu.getPid());
            map.put("text", authMenu.getName());
            map.put("iconCls", authMenu.getIcon());
            map.put("state", "open");
            for (AuthRoleMenu authRoleMenu : authRoleMenus) {
                // 中间表 有记录，且是 叶子节点，选中
                if (authRoleMenu.getMenuId() == authMenu.getId() && !pids.contains(authMenu.getId())) {
                    map.put("checked", true);
                    break;
                }
            }
            maps.add(map);
        }
        renderJson(maps);
    }


    /**
     * 打开 角色相关的 用户页
     */
    public void openUsersModel(){
        setAttr("roleId",getPara("id"));
        render("auth/authRole_user.html");
    }


    /**
     * 角色 相关用户数据
     */
    @Before(SearchSql.class)
    public void queryUsers(){
        int pageNumber=getAttr("pageNumber");
        int pageSize=getAttr("pageSize");
        String where=getAttr(Constant.SEARCH_SQL);
        Page<AuthUserRole> authUserRolePage=AuthUserRole.dao.pageWithUserInfo(pageNumber,pageSize,where);
        renderDatagrid(authUserRolePage);
    }

    /**
     * 删除 用户角色 关联记录
     */
    @Before(Tx.class)
    public void deleteUserRole(){
         String userId = getPara("userId");
         String roleId = getPara("roleId");
         AuthUserRole authUserRole= AuthUserRole.dao.findById(roleId,userId);
         if(authUserRole==null){
             renderText(Constant.DELETE_FAIL);
             return;
         }
         if(authUserRole.delete()){

             // 操作日志
             AuthUser authUser = AuthUser.dao.findById(userId);
             AuthRole authRole= AuthRole.dao.findById(roleId);
             addOpLog("用户: "+authUser.getUsername()+", 取消关联角色: "+authRole.getRoleName());

             renderText(Constant.DELETE_SUCCESS);
         }else{
             renderText(Constant.DELETE_FAIL);
         }
    }

}
