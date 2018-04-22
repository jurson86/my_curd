package com.hxkj.gentest.controller;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.Identities;
import com.hxkj.common.util.search.SearchSql;
import com.hxkj.gentest.model.GentestMulpktable;
import com.jfinal.aop.Before;
import com.jfinal.plugin.activerecord.Page;

/**
 * GentestMulpktable 控制器
 */
public class GentestMulpktableController extends BaseController {

    /**
     * 列表页
     */
    public void index() {
        render("gentest/gentestMulpktable.html");
    }


    /**
     * 列表数据
     */
    @Before(SearchSql.class)
    public void query() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);
        Page<GentestMulpktable> gentestMulpktablePage = GentestMulpktable.dao.page(pageNumber, pageSize, where);

        renderDatagrid(gentestMulpktablePage);
    }


    /**
     * 打开新增或者修改弹出框
     */
    public void newModel() {
        String id = getPara("id");
        String id2 = getPara("id2");
        String id3 = getPara("id3");
        if (id != null && id2 != null && id3 != null) {
            GentestMulpktable gentestMulpktable = GentestMulpktable.dao.findById(id, id2, id3);
            setAttr("gentestMulpktable", gentestMulpktable);
        }

        render("gentest/gentestMulpktable_form.html");
    }


    /**
     * 增加
     */
    public void addAction() {
        GentestMulpktable gentestMulpktable = getBean(GentestMulpktable.class, "");
        gentestMulpktable.set("id", Identities.uuid2());
        gentestMulpktable.set("id2", Identities.uuid2());
        gentestMulpktable.set("id3", Identities.uuid2());
        boolean saveFlag = gentestMulpktable.save();
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
        String id2 = getPara("id2");
        String id3 = getPara("id3");
        Boolean delflag = GentestMulpktable.dao.deleteById(id, id2, id3);
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
        GentestMulpktable gentestMulpktable = getBean(GentestMulpktable.class, "");
        boolean updateFlag = gentestMulpktable.update();
        if (updateFlag) {
            renderText(Constant.UPDATE_SUCCESS);
        } else {
            renderText(Constant.UPDATE_FAIL);
        }
    }
}
