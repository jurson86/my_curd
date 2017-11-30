package com.hxkj.bus.controller;

import com.jfinal.aop.Before;
import com.jfinal.plugin.activerecord.Page;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.Identities;
import com.hxkj.common.util.SearchSql;
import com.hxkj.bus.model.BusNovel;

/**
 * BusNovel 控制器
 */
public class BusNovelController extends BaseController {

    /**
     * 列表页
     */
    public void index() {
        render("bus/busNovel.html");
    }


    /**
     * 列表数据
     */
    @Before(SearchSql.class)
    public void query() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);
        Page<BusNovel> busNovelPage = BusNovel.dao.page(pageNumber, pageSize, where);

        renderDatagrid(busNovelPage);
    }


    /**
     * 打开新增或者修改弹出框
     */
    public void newModel() {
        String id = getPara("id");
        if (id != null) {
            BusNovel busNovel = BusNovel.dao.findById(id);
            setAttr("busNovel", busNovel);
        }

        render("bus/busNovel_form.html");
    }


    /**
     * 增加
     */
    public void addAction() {

        BusNovel busNovel = getBean(BusNovel.class, "");
        busNovel.setId(Identities.uuid2());
        boolean saveFlag = busNovel.save();
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
        Boolean delflag = BusNovel.dao.deleteById(id);
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
        BusNovel busNovel = getBean(BusNovel.class, "");
        boolean updateFlag = busNovel.update();
        if (updateFlag) {
            renderText(Constant.ADD_SUCCESS);
        } else {
            renderText(Constant.ADD_FAIL);
        }
    }
}
