package com.github.qinyou.common.config;

/**
 * 常量
 *
 * @author zhangchuang
 */
public class Constant {
    // 项目默认编码
    public final static String DEFAULT_ENCODEING = "UTF-8";
    // 查询 过滤器 使用
    public final static String SEARCH_SQL = "search_sql";
    // 用户默认密码(添加用户时，重置用户密码时)
    public final static String USER_DEFAULT_PASSWORD = "123456";
    // views 视图路径
    public final static String VIEW_PATH = "/WEB-INF/views/";

    // 操作提示信息
    public final static String ADD_SUCCESS = "添加成功";
    public final static String ADD_FAIL = "添加失败";
    public final static String DELETE_SUCCESS = "删除成功";
    public final static String DELETE_FAIL = "删除失败";
    public final static String UPDATE_SUCCESS = "修改成功";
    public final static String UPDATE_FAIL = "修改失败";
    public final static String IMPORT_SUCCESS = "导入成功";

    public final static String IMPORT_FAIL = "导入失败";
    public final static String AUDIT_OVER = "审批完成";
    public final static String PARAM_IS_EMPTY = "参数为空";
}
