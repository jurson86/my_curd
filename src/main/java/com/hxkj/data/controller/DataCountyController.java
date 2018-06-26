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
import com.hxkj.data.model.DataCounty;

import java.util.List;

/**
 * DataCounty 控制器
 * @author
 * @date 2018-06-24 20:51:04
 */
public class DataCountyController extends BaseController{

        /**
         * 列表页
         */
        public void index(){
          render("data/dataCounty.html");
        }


        /**
         * 列表数据
         */
        @Before(SearchSql.class)
        public void query(){
            int pageNumber=getAttr("pageNumber");
            int pageSize=getAttr("pageSize");
            String where=getAttr(Constant.SEARCH_SQL);
            Page<DataCounty> dataCountyPage=DataCounty.dao.page(pageNumber,pageSize,where);
            renderDatagrid(dataCountyPage);
        }


        /**
         * 打开新增或者修改弹出框
         */
        public void newModel(){
            // 有且只有一个主键，且主键类型为 字符串，否则需要手动修改
            Integer oid=getParaToInt("oid");
            if(oid!=null){
                DataCounty dataCounty=DataCounty.dao.findById(oid);
                setAttr("dataCounty",dataCounty);
            }
            render("data/dataCounty_form.html");
        }


        /**
         * 增加
         */
        public void addAction(){
            DataCounty dataCounty=getBean(DataCounty.class,"");
            boolean saveFlag=dataCounty.save();
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
            String oids = getPara("oids");
            if(oids.contains(",")){
                String deleteSql = "delete from data_county where oid  in ( " + oids + " ) ";
                Db.update(deleteSql);
            }else{
                DataCounty.dao.deleteById(oids);
            }
            renderText(Constant.DELETE_SUCCESS);
        }

        /**
         * 修改
         */
        public void updateAction(){
            DataCounty dataCounty=getBean(DataCounty.class,"");
            boolean updateFlag=dataCounty.update();
            if(updateFlag){
                renderText(Constant.UPDATE_SUCCESS);
            }else{
                renderText(Constant.UPDATE_FAIL);
            }
        }

        @Clear
        public void countyData(){
            Integer cid = getParaToInt("cid");
            List<DataCounty> dataCounties;
            String sql;
            if(cid!=null){
                sql = "select * from data_county where cid = ?";
                dataCounties = DataCounty.dao.find(sql,cid);
            }else{
                sql = "select * from data_county";
                dataCounties = DataCounty.dao.find(sql);
            }
            renderJson(dataCounties);
        }
}
