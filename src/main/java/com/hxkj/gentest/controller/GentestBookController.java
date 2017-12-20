package com.hxkj.gentest.controller;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.Identities;
import com.hxkj.common.util.SearchSql;
import com.hxkj.gentest.model.GentestBook;
import com.jfinal.aop.Before;
import com.jfinal.plugin.activerecord.Page;

/**
 * GentestBook 控制器
 */
public class GentestBookController extends BaseController {

    /**
     * 列表页
     */
    public void index() {
        render("gentest/gentestBook.html");
    }


    /**
     * 列表数据
     */
    @Before(SearchSql.class)
    public void query() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);
        Page<GentestBook> gentestBookPage = GentestBook.dao.page(pageNumber, pageSize, where);

        renderDatagrid(gentestBookPage);
    }


    /**
     * 打开新增或者修改弹出框
     */
    public void newModel() {
        String id = getPara("id");
        if (id != null) {
            GentestBook gentestBook = GentestBook.dao.findById(id);
            setAttr("gentestBook", gentestBook);
        }

        render("gentest/gentestBook_form.html");
    }


    /**
     * 增加
     */
    public void addAction() {
        GentestBook gentestBook = getBean(GentestBook.class, "");
        gentestBook.set("id", Identities.uuid2());
        boolean saveFlag = gentestBook.save();
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
        Boolean delflag = GentestBook.dao.deleteById(id);
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
        GentestBook gentestBook = getBean(GentestBook.class, "");
        boolean updateFlag = gentestBook.update();
        if (updateFlag) {
            renderText(Constant.UPDATE_SUCCESS);
        } else {
            renderText(Constant.UPDATE_FAIL);
        }
    }
}
