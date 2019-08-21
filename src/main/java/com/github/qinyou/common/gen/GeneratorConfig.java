package com.github.qinyou.common.gen;

import com.jfinal.kit.PathKit;

import java.util.LinkedHashSet;
import java.util.Set;


/**
 * 代码生成器配置
 *
 * @author zhangchuang
 */
public class GeneratorConfig {
    // 模块名
    public static String moduleName = "system";
    // 基础包名
    public static String basePackageName = "com.github.qinyou";
    // 代码中 @author 注释
    public static String author = "chuang";

    // 在线代码生成器，多数据源配置
    public static String dbConfigName = "my_curd_oa";
    // 数据库 schema
    public static String schemaPattern = "my_curd_oa";
    // 页面中不显示的字段
    public static String[] excludeFields = new String[]{"createTime", "creater", "updateTime", "updater"};

    // 需生成代码的表
    public static Set<String> tableNames = new LinkedHashSet<>();

    // 模板文件基础路径
    public static String tplBasePath = PathKit.getRootClassPath().replaceAll("\\\\", "/") + "/generator/";
    // 生成文件基础路径 (web工具不需要）
    public static String outputBasePath = "E:/mycurdpro/gencode/" + GeneratorConfig.moduleName + "/";

    // 忽略的表 前缀，多个之间 逗号分隔
    public static String ignoreTablePrefixes = "sys_,act_"; // 忽略 系统表、activiti 表

    static {
        // 通过 client 中 main 方法生成代码，在 此处添加需要生成的代码的表名
        tableNames.add("sys_button");
        tableNames.add("sys_role_button");
    }
}
