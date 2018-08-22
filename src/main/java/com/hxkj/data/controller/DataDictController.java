package com.hxkj.data.controller;

import com.google.common.base.Preconditions;
import com.hxkj.common.constant.Constant;
import com.hxkj.common.controller.BaseController;
import com.hxkj.common.util.search.SearchSql;
import com.hxkj.data.model.DataDict;
import com.jfinal.aop.Before;
import com.jfinal.aop.Clear;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;
import com.jfinal.plugin.activerecord.tx.Tx;

import java.util.Date;
import java.util.List;

/**
 * DataDict 控制器
 */
public class DataDictController extends BaseController {

    /**
     * 列表页
     */
    public void index() {
        render("data/dataDict.html");
    }


    /**
     * 列表数据
     */
    @Before(SearchSql.class)
    public void query() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);
        Page<DataDict> dataDictPage = DataDict.dao.page(pageNumber, pageSize, where);
        renderDatagrid(dataDictPage);
    }


    /**
     * 打开新增或者修改弹出框
     */

    public void newModel() {
        String id = getPara("id");
        if (id != null) {
            DataDict dataDict = DataDict.dao.findById(id);
            setAttr("dataDict", dataDict);
        }
        render("data/dataDict_form.html");
    }


    /**
     * 增加
     */
    public void addAction() {
        DataDict dataDict = getBean(DataDict.class, "");
        dataDict.setCreateTime(new Date());
        boolean saveFlag = dataDict.save();
        if (saveFlag) {
            renderText(Constant.ADD_SUCCESS);
        } else {
            renderText(Constant.ADD_FAIL);
        }
    }

    /**
     * 删除
     */
    @Before(Tx.class)
    public void deleteAction() {
        String ids = getPara("ids");
        if(ids.contains(",")){
            String deleteSql = "delete from data_dict where id  in ( " + ids + " ) ";
            Db.update(deleteSql);
        }else{
            DataDict.dao.deleteById(ids);
        }
        // 执行不出错 即认为 删除成功
        renderText(Constant.DELETE_SUCCESS);
    }

    /**
     * 修改
     */
    public void updateAction() {
        DataDict dataDict = getBean(DataDict.class, "");
        dataDict.setLastEditTime(new Date());
        boolean updateFlag = dataDict.update();
        if (updateFlag) {
            renderText(Constant.UPDATE_SUCCESS);
        } else {
            renderText(Constant.UPDATE_FAIL);
        }
    }

    /**
     * 字典数据公共借口，供其它控制器使用，不拦截权限
     */
    @Clear
    public void queryDictData() {
        String fields = getPara("fields");  //查询的字段 例如dict_key as label, dict_value as value
        String type = getPara("type");      // 字典字段类型
        Preconditions.checkNotNull(fields, "fields字段信息不能为空");
        String strWhere = StrKit.notBlank(type) ? " where  dict_type = '" + type + "'" : "";
        List<Record> codeData = Db.find("select " + fields + " from  data_dict" + strWhere);
        renderJson(codeData);
    }
}
