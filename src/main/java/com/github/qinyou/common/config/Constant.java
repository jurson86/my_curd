package com.github.qinyou.common.config;

import java.util.HashMap;
import java.util.Map;

/**
 * 常量
 *
 * @author zhangchuang
 */
public class Constant {
    // 项目默认编码
    public final static String DEFAULT_ENCODEING = "UTF-8";

    // 查询 过滤器 使用 SearchSql 使用
    public final static String SEARCH_SQL = "search_sql";

    // views 视图路径
    public final static String VIEW_PATH = "/WEB-INF/views/";

    // 系统参数设置
    public final static Map<String, String> SETTING = new HashMap<>();
}
