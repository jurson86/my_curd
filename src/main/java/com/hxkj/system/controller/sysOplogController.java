package com.hxkj.system.controller;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.SearchSql;
import com.hxkj.common.util.csv.CsvRender;
import com.hxkj.system.model.SysOplog;
import com.hxkj.system.model.SysOrg;
import com.jfinal.aop.Before;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.tx.Tx;

import java.util.*;

/**
 * Created by Administrator on 2017-11-25.
 */
public class sysOplogController  extends BaseController {

    public void index(){
        render("system/sysOplog.html");
    }

    @Before(SearchSql.class)
    public void query(){
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);

        String sqlSelect = " select so.*, su.name as user_name ";
        String sqlExceptSelect = " from sys_oplog  so LEFT JOIN sys_user  su on so.user_id = su.id  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }

        where += "order by so.create_time desc";

        Page<SysOplog> sysOplogPage = SysOplog.dao.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);

        renderDatagrid(sysOplogPage);
    }


    /**
     *  导出Excel
     */
    @Before(SearchSql.class)
    public void exportToExcel(){

    }

    public void exportToCvs(){
        String where = getAttr(Constant.SEARCH_SQL);

        String sqlSelect = " select so.*, su.name as user_name ";
        String sqlExceptSelect = " from sys_oplog  so LEFT JOIN sys_user  su on so.user_id = su.id  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }

        where += "order by so.create_time desc";
        List<SysOplog> sysOplogs = SysOplog.dao.find(sqlSelect+sqlExceptSelect);
        List<String> headers = Arrays.asList("操作人员","日志内容","IP地址","操作时间");
        List<String> columns = Arrays.asList("user_name","op_content","ip","create_time");
        CsvRender csvRender= new CsvRender(headers,sysOplogs);
        csvRender.fileName("操作日志.csv");
        csvRender.clomuns(columns);
        render(csvRender);

    }


    @Before(Tx.class)
    public void deleteAction(){
        String ids = getPara("ids");
        ids = "'"+ ids.replace(",","','")+"'";
        String deleteSql = "delete from sys_oplog where id  in ( "+ids+" ) ";
        Integer updateNum=  Db.update(deleteSql);
        if(updateNum!=0){
            renderText(Constant.DELETE_SUCCESS);
        }else{
            renderText(Constant.DELETE_FAIL);
        }
    }
}
