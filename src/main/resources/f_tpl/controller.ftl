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
            String id=getPara("id");
            if(id!=null){
            ${(table.tableNameCamelFirstUp)!} ${(table.tableNameCamel)!}=${(table.tableNameCamelFirstUp)!}.dao.findById(id);
            setAttr("${(table.tableNameCamel)!}",${(table.tableNameCamel)!});
            }

            render("${(moduleName)!}/${(table.tableNameCamel)!}_form.html");
        }


        /**
         * 增加
         */
        public void addAction(){

            ${(table.tableNameCamelFirstUp)!} ${(table.tableNameCamel)!}=getBean(${(table.tableNameCamelFirstUp)!}.class,"");
            ${(table.tableNameCamel)!}.setId(Identities.uuid2());
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
            String id=getPara("id");
            Boolean delflag=${(table.tableNameCamelFirstUp)!}.dao.deleteById(id);
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
