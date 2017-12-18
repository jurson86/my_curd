package com.hxkj.bus.controller;

import com.hxkj.bus.model.BusTwoPk;
import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.Identities;
import com.hxkj.common.util.SearchSql;
import com.jfinal.aop.Before;
import com.jfinal.plugin.activerecord.Page;

/**
 * BusTwoPk 控制器
 */
public class BusTwoPkController extends BaseController {

    /**
     * 列表页
     */
    public void index() {
        render("bus/busTwoPk.html");
    }


    /**
     * 列表数据
     */
    @Before(SearchSql.class)
    public void query() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);
        Page<BusTwoPk> busTwoPkPage = BusTwoPk.dao.page(pageNumber, pageSize, where);

        renderDatagrid(busTwoPkPage);
    }


    /**
     * 打开新增或者修改弹出框
     */
    public void newModel() {
        String id = getPara("id");
        String id2 = getPara("id2");
        if (id != null && id2 != null) {
            BusTwoPk busTwoPk = BusTwoPk.dao.findById(id, id2);
            setAttr("busTwoPk", busTwoPk);
        }

        render("bus/busTwoPk_form.html");
    }


    /**
     * 增加
     */
    public void addAction() {

        BusTwoPk busTwoPk = getBean(BusTwoPk.class, "");
        busTwoPk.set("id", Identities.uuid2());
        busTwoPk.set("id2", Identities.uuid2());
        boolean saveFlag = busTwoPk.save();
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
        Boolean delflag = BusTwoPk.dao.deleteById(id, id2);
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
        BusTwoPk busTwoPk = getBean(BusTwoPk.class, "");
        boolean updateFlag = busTwoPk.update();
        if (updateFlag) {
            renderText(Constant.UPDATE_SUCCESS);
        } else {
            renderText(Constant.UPDATE_FAIL);
        }
    }
}
