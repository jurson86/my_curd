package ${(basePackageName)!}.${(moduleName)!}.controller;

import com.jfinal.aop.Before;
import com.jfinal.plugin.activerecord.Page;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.Identities;
import com.hxkj.common.util.SearchSql;
import ${(basePackageName)!}.${(moduleName)!}.model.${(table.tableNameCamelFirstUp)!};

/**
 * ${(table.tableNameCamelFirstUp)!} 控制器
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
            <#list table.tablePrimaryKeys as pk>
            String ${pk}=getPara("${pk}");
            </#list>
            if(<#list table.tablePrimaryKeys as pk><#if pk_has_next>${pk}!=null && <#else>${pk}!=null </#if></#list>){
                ${(table.tableNameCamelFirstUp)!} ${(table.tableNameCamel)!}=${(table.tableNameCamelFirstUp)!}.dao.findById( <#list table.tablePrimaryKeys as pk> <#if pk_has_next>${pk} , <#else>${pk}</#if></#list>);
                setAttr("${(table.tableNameCamel)!}",${(table.tableNameCamel)!});
            }

            render("${(moduleName)!}/${(table.tableNameCamel)!}_form.html");
        }


        /**
         * 增加
         */
        public void addAction(){
            ${(table.tableNameCamelFirstUp)!} ${(table.tableNameCamel)!}=getBean(${(table.tableNameCamelFirstUp)!}.class,"");
            <#list table.tablePrimaryKeys as pk>
            ${(table.tableNameCamel)!}.set("${pk}",Identities.uuid2());
            </#list>
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
        public void deleteAction(){
            <#list table.tablePrimaryKeys as pk>
            String ${pk}=getPara("${pk}");
            </#list>
            Boolean delflag=${(table.tableNameCamelFirstUp)!}.dao.deleteById( <#list table.tablePrimaryKeys as pk> <#if pk_has_next>${pk} , <#else>${pk}</#if></#list>);
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
            ${(table.tableNameCamelFirstUp)!} ${(table.tableNameCamel)!}=getBean(${(table.tableNameCamelFirstUp)!}.class,"");
            boolean updateFlag=${(table.tableNameCamel)!}.update();
            if(updateFlag){
                renderText(Constant.UPDATE_SUCCESS);
            }else{
                renderText(Constant.UPDATE_FAIL);
            }
        }
}
