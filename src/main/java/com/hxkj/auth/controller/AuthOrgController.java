package com.hxkj.auth.controller;

import com.hxkj.auth.model.AuthOrg;
import com.hxkj.auth.model.AuthUser;
import com.hxkj.common.constant.Constant;
import com.hxkj.common.controller.BaseController;
import com.hxkj.common.util.search.SearchSql;
import com.jfinal.aop.Before;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;
import com.jfinal.plugin.activerecord.tx.Tx;

import java.util.*;

/**
 * 组织机构 控制器
 */
public class AuthOrgController extends BaseController {

    /**
     * 列表页
     */
    public void index() {
        render("auth/authOrg.html");
    }


    /**
     * 列表页 组织机构数据
     */
    @Before(SearchSql.class)
    public void query() {
        String where = getAttr(Constant.SEARCH_SQL);
        List<AuthOrg> authOrgs = AuthOrg.dao.findWhere(where);
        renderJson(authOrgs);
    }


    /**
     * 列表页 系统用户数据
     */
    @Before(SearchSql.class)
    public void queryUser() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);
        Long id = getParaToLong("orgId");

        String sqlSelect = " select * ";
        String sqlExceptSelect = " from auth_user  ";

        if (id != null) {
            // 根据组织机构查询 系统用户
            Record record = Db.findFirst("select authOrgTreeIds(?) as childrenIds ", id);
            String childrenIds = record.getStr("childrenIds");  // 子、孙 id
            if (StrKit.notBlank(childrenIds)) {
                sqlExceptSelect += " where  org_id  in  (" + childrenIds + ")";
            }

            if (StrKit.notBlank(where)) {
                sqlExceptSelect += " and   ( " + where + " )";
            }
        } else {
            if (StrKit.notBlank(where)) {
                sqlExceptSelect += " where " + where;
            }
        }

        sqlExceptSelect += " order by create_time ";
        Page<AuthUser> authUsers = AuthUser.dao.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
        renderDatagrid(authUsers);
    }


    /**
     * 新增 或者 编辑 表单
     */
    public void newModel() {
        Long id = getParaToLong("id");
        if (id != null) {
            AuthOrg authOrg = AuthOrg.dao.findById(id);
            setAttr("authOrg", authOrg);
            setAttr("pid",authOrg.getPid());
        }else{
            setAttr("pid",getPara("pid","0"));
        }
        render("auth/authOrg_form.html");
    }

    /**
     * 新增
     */
    public void addAction() {
        AuthOrg authOrg = getBean(AuthOrg.class, "");
        authOrg.setCreateTime(new Date());
        boolean saveFlag = authOrg.save();
        if (saveFlag) {
            renderText(Constant.ADD_SUCCESS);
        } else {
            renderText(Constant.ADD_FAIL);
        }
    }

    /**
     * 编辑
     */
    public void updateAction() {
        AuthOrg authOrg = getBean(AuthOrg.class, "");
        authOrg.setLastEditTime(new Date());
        boolean updateFlag = authOrg.update();
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
        // 删除当前结构和子孙组织机构
        Record record = Db.findFirst("select authOrgTreeIds(?) as childrenIds ", id);
        String childrenIds = record.getStr("childrenIds");  // 子、孙 id
        String deleteSql = "delete from auth_org where  id  in (" + childrenIds + ")";
        Db.update(deleteSql);
        // 当前机构和子组织机构的 人员 orgId 设置为null
        String updateSql = "update auth_user set org_id = null where  org_id in (" + childrenIds + ")";
        Db.update(updateSql);
        renderText(Constant.DELETE_SUCCESS);
    }


    /**
     * 所有组织机构 数据
     */
    public void allOrg() {
        List<AuthOrg> authOrgs = AuthOrg.dao.findWhere(null);
        List<Map<String, Object>> maps = new ArrayList<Map<String, Object>>();
        for (AuthOrg authOrg : authOrgs) {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("id", authOrg.getId());
            map.put("pid", authOrg.getPid());
            map.put("text", authOrg.getName());
            map.put("open", true);
            maps.add(map);
        }
        renderJson(maps);
    }


}
