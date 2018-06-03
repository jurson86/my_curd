package com.hxkj.ordinaryUser.controller;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.search.SearchSql;
import com.hxkj.system.model.SysOrg;
import com.hxkj.system.model.SysUser;
import com.jfinal.aop.Before;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ContactsController extends BaseController {

    public void index() {
        render("ordinaryUser/contacts.html");
    }


    @Before(SearchSql.class)
    public void query() {
        String where = getAttr(Constant.SEARCH_SQL);
        List<SysOrg> sysOrgs = SysOrg.dao.findWhere(where);
        renderJson(sysOrgs);
    }


    @Before(SearchSql.class)
    public void queryUser() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);
        Integer id = getParaToInt("orgId");

        String sqlSelect = " select a.* , b.org_name ";
        String sqlExceptSelect = " from sys_user a left join sys_org b on a.org_id = b.id ";

        if (id != null) {
            Record record = Db.findFirst("select getChildLst(?,'sys_org') as childrenIds ", id);
            String childrenIds = record.getStr("childrenIds");  // 子、孙 id
            if (StrKit.notBlank(childrenIds)) {
                sqlExceptSelect += " where  a.org_id  in  (" + childrenIds + ")";
            }

            if (StrKit.notBlank(where)) {
                sqlExceptSelect += " and   ( " + where + " )";
            }
        } else {
            if (StrKit.notBlank(where)) {
                sqlExceptSelect += " where " + where;
            }

        }

        sqlExceptSelect += " order by a.create_time ";
        Page<SysUser> sysUsers = SysUser.dao.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);

        renderDatagrid(sysUsers);
    }


    public void allOrg() {
        List<SysOrg> sysOrgs = SysOrg.dao.findWhere(null);
        List<Map<String, Object>> maps = new ArrayList<Map<String, Object>>();
        for (SysOrg sysOrg : sysOrgs) {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("id", sysOrg.getId());
            map.put("pid", sysOrg.getPid());
            map.put("text", sysOrg.getOrgName());
            map.put("open", true);
            maps.add(map);
        }
        renderJson(maps);
    }
}
