package com.hxkj.bus.controller;

import com.hxkj.bus.model.BusNovelChapter;
import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.Identities;
import com.hxkj.common.util.SearchSql;
import com.jfinal.aop.Before;
import com.jfinal.plugin.activerecord.Page;

/**
 * BusNovelChapter 控制器
 */
public class BusNovelChapterController extends BaseController {

    /**
     * 列表页
     */
    public void index() {
        render("bus/busNovelChapter.html");
    }


    /**
     * 列表数据
     */
    @Before(SearchSql.class)
    public void query() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);
        Page<BusNovelChapter> busNovelChapterPage = BusNovelChapter.dao.page(pageNumber, pageSize, where);

        renderDatagrid(busNovelChapterPage);
    }


    /**
     * 打开新增或者修改弹出框
     */
    public void newModel() {
        String id = getPara("id");
        if (id != null) {
            BusNovelChapter busNovelChapter = BusNovelChapter.dao.findById(id);
            setAttr("busNovelChapter", busNovelChapter);
        }

        render("bus/busNovelChapter_form.html");
    }


    /**
     * 增加
     */
    public void addAction() {

        BusNovelChapter busNovelChapter = getBean(BusNovelChapter.class, "");
        busNovelChapter.setId(Identities.uuid2());
        boolean saveFlag = busNovelChapter.save();
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
        Boolean delflag = BusNovelChapter.dao.deleteById(id);
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
        BusNovelChapter busNovelChapter = getBean(BusNovelChapter.class, "");
        boolean updateFlag = busNovelChapter.update();
        if (updateFlag) {
            renderText(Constant.UPDATE_SUCCESS);
        } else {
            renderText(Constant.UPDATE_FAIL);
        }
    }
}
