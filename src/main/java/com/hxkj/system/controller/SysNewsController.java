package com.hxkj.system.controller;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.Identities;
import com.hxkj.common.util.SearchSql;
import com.hxkj.system.model.SysNews;
import com.hxkj.system.model.SysUser;
import com.jfinal.aop.Before;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

/**
 * SysNews 控制器
 */
public class SysNewsController extends BaseController {

    /**
     * 列表页
     */
    public void index() {
        render("system/sysNews.html");
    }


    /**
     * 列表数据
     */
    @Before(SearchSql.class)
    public void query() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);
        Page<SysNews> sysNewsPage = SysNews.dao.page(pageNumber, pageSize, where);

        renderDatagrid(sysNewsPage);
    }


    /**
     * 打开新增或者修改弹出框
     */
    public void newModel() {
        String id = getPara("id");
        if (id != null) {
            SysNews sysNews = SysNews.dao.findById(id);
            setAttr("sysNews", sysNews);
        }

        render("system/sysNews_form.html");
    }


    /**
     * 增加
     */
    public void addAction() {
        SysNews sysNews = getBean(SysNews.class, "");
        sysNews.set("id", Identities.uuid2());
        sysNews.set("tags", StrKit.join(getParaValues("tags"), ","));
        SysUser sysUser = getSessionUser();
        sysNews.set("user_id", sysUser.getId());
        boolean saveFlag = sysNews.save();
        if (saveFlag) {
            renderText(Constant.ADD_SUCCESS);
        } else {
            renderText(Constant.ADD_FAIL);
        }

    }

    /**
     * 删除
     */
    public void deleteAction() {
        String id = getPara("id");
        Boolean delflag = SysNews.dao.deleteById(id);
        if (delflag) {
            renderText(Constant.DELETE_SUCCESS);
        } else {
            renderText(Constant.DELETE_FAIL);
        }
    }

    /**
     * 修改
     */
    public void updateAction() {
        SysNews sysNews = getBean(SysNews.class, "");
        sysNews.set("tags", StrKit.join(getParaValues("tags"), ","));
        SysUser sysUser = getSessionUser();
        sysNews.set("user_id", sysUser.getId());
        boolean updateFlag = sysNews.update();
        if (updateFlag) {
            renderText(Constant.UPDATE_SUCCESS);
        } else {
            renderText(Constant.UPDATE_FAIL);
        }
    }


    public void viewContent() {
        String id = getPara("id");
        if (id != null) {
            SysNews sysNews = SysNews.dao.findById(id);
            setAttr("sysNews", sysNews);
        }

        render("system/sysNews_view_content.html");
    }
}
