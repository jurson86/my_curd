package com.hxkj.data.controller;

import com.jfinal.aop.Before;
import com.jfinal.aop.Clear;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.tx.Tx;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.controller.BaseController;
import com.hxkj.common.util.search.SearchSql;
import com.hxkj.data.model.DataCity;

import java.util.List;

/**
 * DataCity 控制器
 * @author
 * @date 2018-06-24 20:51:04
 */
public class DataCityController extends BaseController{

        /**
         * 列表页
         */
        public void index(){
          render("data/dataCity.html");
        }


        /**
         * 列表数据
         */
        @Before(SearchSql.class)
        public void query(){
            int pageNumber=getAttr("pageNumber");
            int pageSize=getAttr("pageSize");
            String where=getAttr(Constant.SEARCH_SQL);
            Page<DataCity> dataCityPage=DataCity.dao.page(pageNumber,pageSize,where);
            renderDatagrid(dataCityPage);
        }


        /**
         * 打开新增或者修改弹出框
         */
        public void newModel(){
            // 有且只有一个主键，且主键类型为 字符串，否则需要手动修改
            Integer cid=getParaToInt("cid");
            if(cid!=null){
                DataCity dataCity=DataCity.dao.findById(cid);
                setAttr("dataCity",dataCity);
            }
            render("data/dataCity_form.html");
        }


        /**
         * 增加
         */
        public void addAction(){
            DataCity dataCity=getBean(DataCity.class,"");
            boolean saveFlag=dataCity.save();
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
            String cids = getPara("cids");
            if(cids.contains(",")){
                String deleteSql = "delete from data_city where cid  in ( " + cids + " ) ";
                Db.update(deleteSql);
            }else{
                DataCity.dao.deleteById(cids);
            }
            renderText(Constant.DELETE_SUCCESS);
        }

        /**
         * 修改
         */
        public void updateAction(){
            DataCity dataCity=getBean(DataCity.class,"");
            boolean updateFlag=dataCity.update();
            if(updateFlag){
                renderText(Constant.UPDATE_SUCCESS);
            }else{
                renderText(Constant.UPDATE_FAIL);
            }
        }

        @Clear
        public void cityData(){
            Integer pid = getParaToInt("pid");
            List<DataCity> dataCities;
            String sql;
            if(pid!=null){
                sql = "select * from data_city where pid = ?";
                dataCities = DataCity.dao.find(sql,pid);
            }else{
                sql = "select * from data_city";
                dataCities = DataCity.dao.find(sql);
            }
            renderJson(dataCities);
        }

}
