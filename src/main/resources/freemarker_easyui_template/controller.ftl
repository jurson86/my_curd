package ${(basePackageName)!}.${(moduleName)!}.controller;

import com.jfinal.aop.Before;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.tx.Tx;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.Identities;
import com.hxkj.common.util.search.SearchSql;
import ${(basePackageName)!}.${(moduleName)!}.model.${(table.tableNameCamelFirstUp)!};

/**
 * ${(table.tableName)!} 控制器
 * @author
 * @date ${generateDate!}
 */
public class ${(table.tableNameCamelFirstUp)!}Controller extends BaseController{

        /**
         * 列表页
         */
        public void index(){
          render("${(moduleName)!}/${(table.tableNameCamel)!}.html");
        }


        /**
         * 列表数据
         */
        @Before(SearchSql.class)
        public void query(){
            int pageNumber=getAttr("pageNumber");
            int pageSize=getAttr("pageSize");
            String where=getAttr(Constant.SEARCH_SQL);
            Page<${(table.tableNameCamelFirstUp)!}> ${(table.tableNameCamel)!}Page=${(table.tableNameCamelFirstUp)!}.dao.page(pageNumber,pageSize,where);
            renderDatagrid(${(table.tableNameCamel)!}Page);
        }


        /**
         * 打开新增或者修改弹出框
         */
        public void newModel(){
            // 有且只有一个主键，且主键类型为 字符串，否则需要手动修改
            String ${(table.tablePrimaryKeys[0])!}=getPara("${(table.tablePrimaryKeys[0])!}");
            if(StrKit.notBlank(${(table.tablePrimaryKeys[0])!})){
                ${(table.tableNameCamelFirstUp)!} ${(table.tableNameCamel)!}=${(table.tableNameCamelFirstUp)!}.dao.findById(${(table.tablePrimaryKeys[0])!});
                setAttr("${(table.tableNameCamel)!}",${(table.tableNameCamel)!});
            }
            render("${(moduleName)!}/${(table.tableNameCamel)!}_form.html");
        }


        /**
         * 增加
         */
        public void addAction(){
            ${(table.tableNameCamelFirstUp)!} ${(table.tableNameCamel)!}=getBean(${(table.tableNameCamelFirstUp)!}.class,"");
            ${(table.tableNameCamel)!}.set("${(table.tablePrimaryKeys[0])!}",Identities.id());
            boolean saveFlag=${(table.tableNameCamel)!}.save();
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
            String ${(table.tablePrimaryKeys[0])!}s = getPara("${(table.tablePrimaryKeys[0])!}s");
            if(${(table.tablePrimaryKeys[0])!}s.contains(",")){
                ${(table.tablePrimaryKeys[0])!}s = ${(table.tablePrimaryKeys[0])!}s.replaceAll(",","','");
                String deleteSql = "delete from ${(table.tableName)!} where ${(table.tablePrimaryKeys[0])!}  in ( '" + ${(table.tablePrimaryKeys[0])!}s + "' ) ";
                Db.update(deleteSql);
            }else{
                ${(table.tableNameCamelFirstUp)!}.dao.deleteById(${(table.tablePrimaryKeys[0])!}s);
            }
            renderText(Constant.DELETE_SUCCESS);
        }

        /**
         * 修改
         */
        public void updateAction(){
            ${(table.tableNameCamelFirstUp)!} ${(table.tableNameCamel)!}=getBean(${(table.tableNameCamelFirstUp)!}.class,"");
            boolean updateFlag=${(table.tableNameCamel)!}.update();
            if(updateFlag){
                renderText(Constant.UPDATE_SUCCESS);
            }else{
                renderText(Constant.UPDATE_FAIL);
            }
        }
}
