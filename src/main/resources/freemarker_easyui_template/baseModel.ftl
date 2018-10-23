package ${(basePackageName)!}.${(moduleName)!}.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * base model generated code
 * @author
 * @date ${generateDate!}
 */
@SuppressWarnings("serial")
public abstract class Base${(table.tableNameCamelFirstUp)!}<M extends Base${(table.tableNameCamelFirstUp)!}<M>> extends Model<M> implements IBean {
<#if (table.columnList)??>
     <#list table.columnList as col>

   public ${col.columnJavaType} get${col.columnNameCamelFirstUp}() {
       return get("${col.columnName}");
   }

   // ${col.columnName}  ${(col.columnComment)!}
   public void set${col.columnNameCamelFirstUp}(${col.columnJavaType} ${col.columnNameCamel}) {
       set("${col.columnName}", ${col.columnNameCamel});
   }

     </#list>
</#if>
}
