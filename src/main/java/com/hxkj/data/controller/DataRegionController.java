package com.hxkj.data.controller;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.controller.BaseController;
import com.hxkj.data.model.DataRegion;
import com.jfinal.aop.Before;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.tx.Tx;

import java.util.List;

/**
 * data_region 控制器
 *
 * @author
 * @date 2018-09-06 11:26:11
 */
public class DataRegionController extends BaseController {

    /**
     * 列表页
     */
    public void index() {
        render("data/dataRegion.html");
    }


    /**
     * 列表数据
     */
    public void query() {
        // 初始传递pid 为 0
        String pid = getPara("id", "0");
        List<DataRegion> dataRegionList = DataRegion.dao.findByPid(pid);
        for (DataRegion dataRegion : dataRegionList) {
            // 层级别为 3 为县区，没有更细的节点
            if (!"3".equals(dataRegion.getLevelType())) {
                dataRegion.put("state", "closed");
            }
        }
        renderJson(dataRegionList);
    }


    /**
     * 打开新增或者修改弹出框
     */
    public void newModel() {
        // 有且只有一个主键，且主键类型为 字符串，否则需要手动修改
        String id = getPara("id");
        if (StrKit.notBlank(id)) {
            DataRegion dataRegion = DataRegion.dao.findById(id);
            setAttr("dataRegion", dataRegion);
            setAttr("pid", dataRegion.getParentId());
        } else {
            // 新增时如果选中了某个节点,直接作为父节点选中
            setAttr("pid", getPara("pid"));
        }
        render("data/dataRegion_form.html");
    }


    /**
     * 增加 或者 修改
     */
    public void addOrUpdateAction() {
        DataRegion dataRegion = getBean(DataRegion.class, "");
        DataRegion dataRegionOld = DataRegion.dao.findById(dataRegion.getId());
        if (dataRegionOld == null) {
            // 不存在数据 添加
            boolean saveFlag = dataRegion.save();
            if (saveFlag) {
                renderText(Constant.ADD_SUCCESS);
            } else {
                renderText(Constant.ADD_FAIL);
            }
        } else {
            // 存在数据 更新
            boolean updateFlag = dataRegion.update();
            if (updateFlag) {
                renderText(Constant.UPDATE_SUCCESS);
            } else {
                renderText(Constant.UPDATE_FAIL);
            }
        }
    }

    /**
     * 删除
     */
    @Before(Tx.class)
    public void deleteAction() {
        String id = getPara("id");
        DataRegion dataRegion = DataRegion.dao.findById(id);
        if (dataRegion == null) {
            renderText(Constant.DELETE_FAIL);
            return;
        }
        // 不级联删除
        if (dataRegion.delete()) {
            renderText(Constant.DELETE_SUCCESS);
        } else {
            renderText(Constant.DELETE_FAIL);
        }
    }
}
