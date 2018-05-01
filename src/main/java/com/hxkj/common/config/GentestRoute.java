package com.hxkj.common.config;

import com.hxkj.common.constant.Constant;
import com.hxkj.gentest.controller.GentestBookController;
import com.hxkj.gentest.controller.GentestMulpktableController;
import com.jfinal.config.Routes;

/**
 * 代码生成测试模块 路由
 * @author zhangchuang
 */
public class GentestRoute extends Routes {
    @Override
    public void config() {
        // 代码生成测试 普通表
        add("/gentestBook", GentestBookController.class, Constant.VIEW_PATH);
        // 代码生成测试多主键表
        add("/gentestMulpktable", GentestMulpktableController.class, Constant.VIEW_PATH);
    }
}
