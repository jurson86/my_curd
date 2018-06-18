package com.hxkj.system.controller;

import com.google.common.base.Preconditions;
import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.search.SearchSql;
import com.hxkj.system.model.SysDict;
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
 * SysDict 控制器
 */
public class SysDictController extends BaseController {

    /**
     * 列表页
     */
    public void index() {
        render("system/sysDict.html");
    }


    /**
     * 列表数据
     */
    @Before(SearchSql.class)
    public void query() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);
        Page<SysDict> sysDictPage = SysDict.dao.page(pageNumber, pageSize, where);
        renderDatagrid(sysDictPage);
    }


    /**
     * 打开新增或者修改弹出框
     */

    public void newModel() {
        String id = getPara("id");
        if (id != null) {
            SysDict sysDict = SysDict.dao.findById(id);
            setAttr("sysDict", sysDict);
        }
        render("system/sysDict_form.html");
    }


    /**
     * 增加
     */
    public void addAction() {
        SysDict sysDict = getBean(SysDict.class, "");
        sysDict.setCreateTime(new Date());
        boolean saveFlag = sysDict.save();
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
            String deleteSql = "delete from sys_dict where id  in ( " + ids + " ) ";
            Db.update(deleteSql);
        }else{
            SysDict.dao.deleteById(ids);
        }
        // 执行不出错 即认为 删除成功
        renderText(Constant.DELETE_SUCCESS);
    }

    /**
     * 修改
     */
    public void updateAction() {
        SysDict sysDict = getBean(SysDict.class, "");
        sysDict.setCreateTime(new Date());
        boolean updateFlag = sysDict.update();
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
        List<Record> codeData = Db.find("select " + fields + " from  sys_dict" + strWhere);
        renderJson(codeData);
    }
}
