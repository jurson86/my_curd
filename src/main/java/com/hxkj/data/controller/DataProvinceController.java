package com.hxkj.data.controller;

import com.jfinal.aop.Before;
import com.jfinal.aop.Clear;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.tx.Tx;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.Identities;
import com.hxkj.common.util.search.SearchSql;
import com.hxkj.data.model.DataProvince;

import java.util.List;

/**
 * DataProvince 控制器
 * @author
 * @date 2018-06-24 20:51:04
 */
public class DataProvinceController extends BaseController{

        /**
         * 列表页
         */
        public void index(){
          render("data/dataProvince.html");
        }


        /**
         * 列表数据
         */
        @Before(SearchSql.class)
        public void query(){
            int pageNumber=getAttr("pageNumber");
            int pageSize=getAttr("pageSize");
            String where=getAttr(Constant.SEARCH_SQL);
            Page<DataProvince> dataProvincePage=DataProvince.dao.page(pageNumber,pageSize,where);
            renderDatagrid(dataProvincePage);
        }


        /**
         * 打开新增或者修改弹出框
         */
        public void newModel(){
            // 有且只有一个主键，且主键类型为 字符串，否则需要手动修改
            Integer pid=getParaToInt("pid");
            if(pid!=null){
                DataProvince dataProvince=DataProvince.dao.findById(pid);
                setAttr("dataProvince",dataProvince);
            }
            render("data/dataProvince_form.html");
        }


        /**
         * 增加
         */
        public void addAction(){
            DataProvince dataProvince=getBean(DataProvince.class,"");
            boolean saveFlag=dataProvince.save();
            if(saveFlag){
                renderText(Constant.ADD_SUCCESS);
            }else{
                renderText(Constant.ADD_FAIL);
            }
        }

        /**
         * 删除
         */
        @Before(Tx.class)
        public void deleteAction(){
            String pids = getPara("pids");
            if(pids.contains(",")){
                String deleteSql = "delete from data_province where pid  in ( " + pids + " ) ";
                Db.update(deleteSql);
            }else{
                DataProvince.dao.deleteById(pids);
            }
            renderText(Constant.DELETE_SUCCESS);
        }

        /**
         * 修改
         */
        public void updateAction(){
            DataProvince dataProvince=getBean(DataProvince.class,"");
            boolean updateFlag=dataProvince.update();
            if(updateFlag){
                renderText(Constant.UPDATE_SUCCESS);
            }else{
                renderText(Constant.UPDATE_FAIL);
            }
        }

        @Clear
        public void  provinceData(){
            List<DataProvince> provinces = DataProvince.dao.find("select * from data_province");
            renderJson(provinces);
        }
}
