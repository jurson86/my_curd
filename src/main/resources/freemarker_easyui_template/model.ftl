package ${(basePackageName)!}.${(moduleName)!}.model;

import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;
import ${(basePackageName)!}.${(moduleName)!}.model.base.Base${table.tableNameCamelFirstUp};

/**
*  table name: ${(table.tableName)!}   ${(table.tableComment)!}
*/
public class ${(table.tableNameCamelFirstUp)!} extends Base${table.tableNameCamelFirstUp}<${(table.tableNameCamelFirstUp)!}> implements java.io.Serializable{

    private static final long serialVersionUID = 1L;
    public static final ${(table.tableNameCamelFirstUp)!} dao = new ${(table.tableNameCamelFirstUp)!}().dao();

    public Page<${(table.tableNameCamelFirstUp)!}>  page(int pageNumber,int pageSize,String where ){

        String sqlSelect = " select * ";
        String sqlExceptSelect = " from ${(table.tableName)!}  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }

        return this.paginate(pageNumber,pageSize,sqlSelect,sqlExceptSelect);
    }

}
