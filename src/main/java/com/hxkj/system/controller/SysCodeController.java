package com.hxkj.system.controller;

import com.google.common.base.Preconditions;
import com.hxkj.common.util.ToolFormatJson;
import com.jfinal.aop.Before;
import com.jfinal.aop.Clear;
import com.jfinal.kit.JsonKit;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.Identities;
import com.hxkj.common.util.SearchSql;
import com.hxkj.system.model.SysCode;
import com.jfinal.plugin.activerecord.Record;

import java.util.List;

/**
 * SysCode 控制器
 */
public class SysCodeController extends BaseController{

        /**
         * 列表页
         */
        public void index(){
          render("system/sysCode.html");
        }


        /**
         * 列表数据
         */
        @Before(SearchSql.class)
        public void query(){
            int pageNumber=getAttr("pageNumber");
            int pageSize=getAttr("pageSize");
            String where=getAttr(Constant.SEARCH_SQL);
            Page<SysCode>sysCodePage=SysCode.dao.page(pageNumber,pageSize,where);

            renderDatagrid(sysCodePage);
        }


        /**
         * 打开新增或者修改弹出框
         */
        public void newModel(){
            String id=getPara("id");
            if(id!=null){
            SysCode sysCode=SysCode.dao.findById(id);
            setAttr("sysCode",sysCode);
            }

            render("system/sysCode_form.html");
        }


        /**
         * 增加
         */
        public void addAction(){

            SysCode sysCode=getBean(SysCode.class,"");
            boolean saveFlag=sysCode.save();
            if(saveFlag){
                renderText(Constant.ADD_SUCCESS);
            }else{
                renderText(Constant.ADD_FAIL);
            }

        }

        /**
         * 删除
         */
        public void deleteAction(){
            String id=getPara("id");
            Boolean delflag=SysCode.dao.deleteById(id);
            if(delflag){
                renderText(Constant.DELETE_SUCCESS);
            }else{
                renderText(Constant.DELETE_FAIL);
            }
        }

        /**
         * 修改
         */
        public void updateAction(){
            SysCode sysCode=getBean(SysCode.class,"");
            boolean updateFlag=sysCode.update();
            if(updateFlag){
                renderText(Constant.UPDATE_SUCCESS);
            }else{
                renderText(Constant.UPDATE_FAIL);
            }
        }



        /*码表查询 接口，供其它模块使用，不拦截*/
        @Clear
        public void queryCodeData(){
            String format = getPara("formatFlag"); // json 是否格式化

            String fields = getPara("fields");
            String type = getPara("type");
            Preconditions.checkNotNull(fields, "fields字段信息不能为空");
            String strWhere = StrKit.notBlank(type) ? " where  type = " + type : "";
            List<Record> codeData = Db.find("select " + fields + " from  sys_code"   + strWhere);
            String jsonStr = JsonKit.toJson(codeData);

            if(StrKit.notBlank(format)){
                jsonStr = ToolFormatJson.format(jsonStr);
            }
            renderJson(jsonStr);
        }
}
