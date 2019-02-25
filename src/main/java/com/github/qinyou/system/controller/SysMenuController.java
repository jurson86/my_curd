package com.github.qinyou.system.controller;

import com.github.qinyou.common.base.BaseController;
import com.github.qinyou.common.config.Constant;
import com.github.qinyou.common.interceptor.PermissionInterceptor;
import com.github.qinyou.common.interceptor.SearchSql;
import com.github.qinyou.common.utils.Id.IdUtils;
import com.github.qinyou.common.utils.StringUtils;
import com.github.qinyou.common.utils.TreeTableUtils;
import com.github.qinyou.common.utils.WebUtils;
import com.github.qinyou.common.validator.IdRequired;
import com.github.qinyou.system.model.SysMenu;
import com.github.qinyou.system.model.SysRoleMenu;
import com.jfinal.aop.Before;
import com.jfinal.aop.Clear;
import com.jfinal.config.Routes;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;

import java.util.*;

/**
 * 菜单管理
 */
public class SysMenuController extends BaseController {

    public void index() {
        render("system/sysMenu.ftl");
    }

    /**
     * treegrid 查询数据
     */
    public void query() {
        List<SysMenu> sysMenus = SysMenu.dao.findAllSort();
        // easyui 字体图标
        for (SysMenu sysMenu : sysMenus) {
            sysMenu.put("iconCls", sysMenu.getIcon());
        }
        renderJson(sysMenus);
    }

    /**
     * 新增 或 修改 弹窗
     */
    public void newModel() {
        String id = get("id");
        if (StringUtils.notEmpty(id)) {
            SysMenu sysMenu = SysMenu.dao.findById(id);
            setAttr("sysMenu", sysMenu);
            if (sysMenu != null) {
                setAttr("pid", sysMenu.getPid());
            }
        } else {
            setAttr("pid", getPara("pid", "0"));
        }
        render("system/sysMenu_form.ftl");
    }

    /**
     * 添加 action
     */
    public void addAction() {
        SysMenu sysMenu = getBean(SysMenu.class, "");
        if (!sysMenu.getUrl().equals("/")) {
            // 地址不重复
            SysMenu sysMenuOld = SysMenu.dao.findByProperty("url", sysMenu.getUrl());
            if (sysMenuOld != null) {
                renderFail("菜单地址已存在.");
                return;
            }
            // 是否合法 controller key 验证
            Set<String> controllerKeySet = Routes.getControllerKeySet();
            if (!controllerKeySet.contains(sysMenu.getUrl())) {
                renderFail("菜单地址 必须是 已存在 Controller 的 Controller Key.");
                return;
            }
        }
        sysMenu.setId(IdUtils.id())
                .setCreater(WebUtils.getSessionUsername(this))
                .setCreateTime(new Date());
        if (sysMenu.save()) {
            renderSuccess(Constant.ADD_SUCCESS);
        } else {
            renderFail(Constant.ADD_FAIL);
        }
    }

    /**
     * 修改 action
     */
    public void updateAction() {
        SysMenu sysMenu = getBean(SysMenu.class, "");
        if (!sysMenu.getUrl().equals("/")) {
            // 地址不重复
            SysMenu sysMenuOld = SysMenu.dao.findByProperty("url", sysMenu.getUrl());
            if (sysMenuOld != null && !sysMenu.getId().equals(sysMenuOld.getId())) {
                renderFail("菜单地址已存在.");
                return;
            }
            // 是否合法 controller key 验证
            Set<String> controllerKeySet = Routes.getControllerKeySet();
            if (!controllerKeySet.contains(sysMenu.getUrl())) {
                renderFail("菜单地址 必须是 已存在 Controller 的 Controller Key.");
                return;
            }
        }
        sysMenu.setUpdater(WebUtils.getSessionUsername(this))
                .setUpdateTime(new Date());
        if (sysMenu.update()) {
            renderSuccess(Constant.UPDATE_SUCCESS);
        } else {
            renderFail(Constant.UPDATE_FAIL);
        }
    }


    /**
     * 删除 action
     */
    @Before(IdRequired.class)
    public void deleteAction() {
        String id = get("id");
        Db.tx(() -> {
            String allIds = TreeTableUtils.getSonTreeIds(id, "sys_menu", "id", "pid");
            if (StringUtils.isEmpty(allIds)) {
                return true;
            }
            allIds = allIds.replaceAll(",", "','");
            String sql = "delete from sys_menu where id in ('" + allIds + "')";
            Db.update(sql);
            sql = "delete from sys_role_menu where sysMenuId in ('" + allIds + "')";
            Db.update(sql);
            return true;
        });
        renderSuccess(Constant.DELETE_SUCCESS);
    }


    /**
     * org comobTree 数据, 完整的数据
     */
    @Clear(PermissionInterceptor.class)
    public void menuComboTree() {
        List<SysMenu> sysMenus = SysMenu.dao.findAllSort();
        Set<String> pids = new HashSet<>();
        sysMenus.forEach(item -> pids.add(item.getPid()));

        List<Map<String, Object>> maps = new ArrayList<>();
        Map<String, Object> root = new HashMap<>();
        root.put("id", "0");
        root.put("pid", "-1");
        root.put("text", "根菜单");
        root.put("iconCls", "iconfont icon-root");
        root.put("state", sysMenus.size() > 0 ? "closed" : "open");
        maps.add(root);
        for (SysMenu sysMenu : sysMenus) {
            Map<String, Object> map = new HashMap<>();
            map.put("id", sysMenu.getId());
            map.put("text", sysMenu.getMenuName());
            map.put("pid", sysMenu.getPid());
            map.put("iconCls", sysMenu.getIcon());
            if (pids.contains(sysMenu.getId())) {
                map.put("state", "closed");
            }
            maps.add(map);
        }
        renderJson(maps);
    }


    /**
     * 查看 菜单相关 角色
     */
    public void openMenuRole() {
        setAttr("menuId", get("id"));
        render("system/sysMenu_role.ftl");
    }

    /**
     * 菜单相关角色数据
     */
    @Before(SearchSql.class)
    public void queryMenuRole() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);
        Page<SysRoleMenu> sysRoleMenuPage = SysRoleMenu.dao.pageWithRoleInfo(pageNumber, pageSize, where);
        renderDatagrid(sysRoleMenuPage);
    }

    /**
     * 菜单相关角色删除
     */
    public void deleteMenuRole() {
        String menuId = get("menuId");
        String roleId = get("roleId");
        if (StringUtils.isEmpty(roleId) || StringUtils.isEmpty(menuId)) {
            renderFail("menuId roleId 参数不可为空");
            return;
        }
        SysRoleMenu.dao.deleteByIds(roleId, menuId);
        renderSuccess("菜单角色删除成功");
    }
}
