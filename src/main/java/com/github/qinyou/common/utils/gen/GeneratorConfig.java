package com.github.qinyou.common.utils.gen;

import com.jfinal.kit.PathKit;
import org.joda.time.DateTime;

import java.util.*;


/**
 * 代码生成器配置
 *
 * @author zhangchuang
 */
public class GeneratorConfig {
    public final static String basePackageName = "com.github.qinyou";   // 基础包名
    public final static String moduleName = "example";    // 模块名
    public final static String author = "zhangchuang";   // 代码中 @author
    public final static String since = new DateTime().toString("yyyy-MM-dd HH:mm:ss");  // 代码中 @since (日期)
    public final static String schemaPattern = "my_curd_pro";   // 模式名（mysql 下 同数据库名)
    // 要生成代码的表名
    @SuppressWarnings("serial")
    public static Set<String> tableNames = new LinkedHashSet<String>() {{
//        add("sys_user");
//        add("sys_user_setting");
//        add("sys_role");
//        add("sys_menu");
//        add("sys_user_role");
//        add("sys_role_menu");
//        add("sys_org");
//        add("sys_dict");
//        add("sys_dict_group");
//        add("sys_file");
//        add("sys_notice");
//        add("sys_notice_detail");
//        add("sys_notice_type");
//        add("sys_notice_type_sys_role");
//        add("sys_service_log");
//        add("sys_visit_log");
//        add("sys_task_log");
        add("ex_single_table");
        add("ex_staff_education");
        add("ex_staff_experience");
        add("ex_staff_family");
        add("ex_staff");
    }};

    // 生成 代码文件基础路径
    public final static String outputBasePath = "E:/mycurdpro/gencode/" + GeneratorConfig.moduleName + "/";
    // 模板文件基础路径
    public final static String tplBasePath = PathKit.getRootClassPath().replaceAll("\\\\", "/") + "/generator/";
    /*（生成代码在项目路径下，轻易不要这么干，可能导致代码覆盖)
         public final static String outputBasePath = PathKit.getWebRootPath().replaceAll("\\\\", "/")
        + "/src/main/java/" + GeneratorConfig.basePackageName.replaceAll("\\.", "/") + "/" + GeneratorConfig.moduleName + "/";
    */

    // 表单页面中 排除掉的 字段 (非业务性字段)
    public final static String[] excludeFields = new String[]{"createTime", "creater", "updateTime", "updater"};


    /*------------------------------  以下配置不需要轻易修改，除非明确相关配置的作用-------------------*/
    // baseModel 中生成 getter 方法增强
    @SuppressWarnings("serial")
    public final static HashMap<String, String> getterTypeMap = new HashMap<String, String>() {{
        put("String", "getStr");
        put("Integer", "getInt");
        put("Long", "getLong");
        put("Double", "getDouble");
        put("Float", "getFloat");
        put("Short", "getShort");
        put("Byte", "getByte");
    }};
    //public final static String tplBasePath = PathKit.getWebRootPath().replaceAll("\\\\", "/") + "/src/main/java/com/mycurdpro/common/utils/gen/tpl/";
    // 类型长短名映射
    @SuppressWarnings("serial")
    public static final Map<String, String> longShort = new HashMap<String, String>(7) {{
        put("java.util.Date", "Date");
        put("java.lang.String", "String");
        put("java.math.BigDecimal", "BigDecimal");
        put("java.lang.Integer", "Integer");
        put("java.lang.Double", "Double");
        put("java.lang.Float", "Float");
        put("java.lang.Long", "Long");
    }};
    // class 中 不需引入包的数据类型，即基础数据类型
    @SuppressWarnings("serial")
    public static final HashSet<String> excludeImportTypes = new HashSet<String>() {{
        add("String");
        add("Double");
        add("Integer");
        add("Float");
        add("Long");
    }};
}
