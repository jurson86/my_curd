package com.github.qinyou.system.controller;

import com.github.qinyou.common.annotation.RequireMenuCode;
import com.github.qinyou.common.base.BaseController;
import com.github.qinyou.common.config.Constant;
import com.github.qinyou.common.interceptor.PermissionInterceptor;
import com.github.qinyou.common.interceptor.SearchSql;
import com.github.qinyou.common.utils.Id.IdUtils;
import com.github.qinyou.common.utils.StringUtils;
import com.github.qinyou.common.utils.TreeTableUtils;
import com.github.qinyou.common.utils.WebUtils;
import com.github.qinyou.common.validator.IdRequired;
import com.github.qinyou.system.model.SysOrg;
import com.github.qinyou.system.model.SysUser;
import com.google.common.base.Objects;
import com.jfinal.aop.Before;
import com.jfinal.aop.Clear;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;

import java.util.*;

/**
 * 组织机构管理
 *
 * @author zhangchuang
 */
@RequireMenuCode("sysOrg")
public class SysOrgController extends BaseController {

    public void index() {
        render("system/sysOrg.ftl");
    }

    /**
     * treegrid 查询数据
     */
    public void query() {
        List<SysOrg> sysOrgs = SysOrg.dao.findAllSort();
        Set<String> pids = new HashSet<>();
        sysOrgs.forEach(item -> pids.add(item.getPid()));

        for (SysOrg sysOrg : sysOrgs) {
            sysOrg.put("iconCls", "iconfont icon-orgtree");
            if (!Objects.equal(sysOrg.getPid(), "0") && pids.contains(sysOrg.getId())) {
                sysOrg.put("state", "closed");
            }
        }
        renderJson(sysOrgs);
    }

    /**
     * 新增 或 修改 弹窗
     */
    public void newModel() {
        String id = get("id");
        if (StringUtils.notEmpty(id)) {
            SysOrg sysOrg = SysOrg.dao.findById(id);
            setAttr("sysOrg", sysOrg);
            if (sysOrg != null) {
                setAttr("pid", sysOrg.getPid());
            }
        } else {
            setAttr("pid", getPara("pid", "0"));
        }
        render("system/sysOrg_form.ftl");
    }

    /**
     * 添加 action
     */
    public void addAction() {
        SysOrg sysOrg = getBean(SysOrg.class, "");
        sysOrg.setId(IdUtils.id())
                .setCreater(WebUtils.getSessionUsername(this))
                .setCreateTime(new Date());
        if (sysOrg.save()) {
            renderSuccess(Constant.ADD_SUCCESS);
        } else {
            renderFail(Constant.ADD_FAIL);
        }
    }

    /**
     * 修改 action
     */
    public void updateAction() {
        SysOrg sysOrg = getBean(SysOrg.class, "");
        sysOrg.setUpdater(WebUtils.getSessionUsername(this))
                .setUpdateTime(new Date());
        if (sysOrg.update()) {
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
        String id = getPara("id");
        Db.tx(() -> {
            // 子孙id,包括自身
            String sonIds = TreeTableUtils.getSonTreeIds(id, "sys_org", "id", "pid");
            if (StringUtils.isEmpty(sonIds)) {
                return true;
            }
            sonIds = sonIds.replaceAll(",", "','");
            // 删除机构
            String sql = "delete from sys_org where id in ('" + sonIds + "')";
            Db.update(sql);
            // 相关 人员 机构字段 置空
            sql = "update sys_user set orgId = null where orgId  in ('" + sonIds + "')";
            Db.update(sql);
            return true;
        });
        renderSuccess(Constant.DELETE_SUCCESS);
    }


    /**
     * org comobTree 数据, 完整的数据
     */
    @Clear(PermissionInterceptor.class)
    public void orgComboTree() {
        Boolean withRoot = getParaToBoolean("withRoot", true);
        List<SysOrg> sysOrgs = SysOrg.dao.findAll();
        // 非叶子id
        Set<String> pids = new HashSet<>();
        sysOrgs.forEach(item -> pids.add(item.getPid()));
        List<Map<String, Object>> maps = new ArrayList<>();
        // 编辑机构时需要
        if (withRoot) {
            Map<String, Object> root = new HashMap<>();
            root.put("id", "0");
            root.put("pid", "-1");
            root.put("text", "根机构");
            root.put("state", sysOrgs.size() > 0 ? "closed" : "open");
            root.put("iconCls", "iconfont icon-orgtree");
            maps.add(root);
        }
        for (SysOrg sysOrg : sysOrgs) {
            Map<String, Object> map = new HashMap<>();
            map.put("id", sysOrg.getId());
            map.put("pid", sysOrg.getPid());
            map.put("text", sysOrg.getOrgName());
            map.put("iconCls", "iconfont icon-orgtree");
            if (pids.contains(sysOrg.getId())) {
                map.put("state", "closed");
            }
            maps.add(map);
        }
        renderJson(maps);
    }


    /**
     * 通过组织机构查询用户 datagrid 数据
     */
    @Before(SearchSql.class)
    public void queryUser() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);

        // 组织机构查询
        String orgId = getPara("extra_orgId");
        if (StringUtils.notEmpty(orgId)) {
            // 机构查询
            Boolean cascadeOrg = getParaToBoolean("extra_cascadeOrg", false);
            String whereSeg;
            if (cascadeOrg) {
                // 级联查询
                String sonIds = TreeTableUtils.getSonTreeIds(orgId, "sys_org", "id", "pid");
                if (StringUtils.notEmpty(sonIds)) {
                    sonIds = sonIds.replaceAll(",", "','");
                } else {
                    sonIds = "unknow";  // 查不到的
                }
                whereSeg = " a.orgId in ('" + sonIds + "')";
            } else {
                whereSeg = " a.orgId ='" + orgId + "' ";
            }
            if (StringUtils.isEmpty(where)) {
                where += whereSeg;
            } else {
                where += (" and " + whereSeg);
            }
        }

        Page<SysUser> sysUserPage = SysUser.dao.page(pageNumber, pageSize, where);
        renderDatagrid(sysUserPage);
    }

}
