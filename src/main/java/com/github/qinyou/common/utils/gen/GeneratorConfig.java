package com.github.qinyou.common.utils.gen;

import com.jfinal.kit.PathKit;
import org.joda.time.DateTime;

import java.util.LinkedHashSet;
import java.util.Set;


/**
 * 代码生成器配置
 *
 * @author zhangchuang
 */
public class GeneratorConfig {
    public static String basePackageName = "com.github.qinyou";
    public static String moduleName = "system";
    public static String author = "zhangchuang";
    public static String since = new DateTime().toString("yyyy-MM-dd HH:mm:ss");
    public static String schemaPattern = "my_curd";

    // 页面中不显示的字段
    public static String[] excludeFields = new String[]{"createTime", "creater", "updateTime", "updater"};

    // 需生成代码的表
    public static Set<String> tableNames = new LinkedHashSet<>();

    static {
//        tableNames.add("ex_single_table");
//        tableNames.add("ex_staff_education");
//        tableNames.add("ex_staff_experience");
//        tableNames.add("ex_staff_family");
//        tableNames.add("ex_staff");
        tableNames.add("sys_button");
        tableNames.add("sys_role_button");
    }

    // 模板文件基础路径
    public static String tplBasePath = PathKit.getRootClassPath().replaceAll("\\\\", "/") + "/generator/";
    // 生成文件基础路径
    public static String outputBasePath = "E:/mycurdpro/gencode/" + GeneratorConfig.moduleName + "/";


}
