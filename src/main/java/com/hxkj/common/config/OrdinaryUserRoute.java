package com.hxkj.common.config;

import com.hxkj.common.constant.Constant;
import com.hxkj.ordinaryUser.controller.*;
import com.jfinal.config.Routes;

/**
 * 普通用户 路由
 */
public class OrdinaryUserRoute extends Routes {
    @Override
    public void config() {
        // 修改密码
        add("/userPassword", UserPasswordController.class, Constant.VIEW_PATH);

        add("/userInfo", UserInfoController.class, Constant.VIEW_PATH);
        // 看小说
        add("/novel", NovelController.class, Constant.VIEW_PATH);

        // 通讯录
        add("/contacts", ContactsController.class, Constant.VIEW_PATH);

        // markdown 编辑器
        add("/markdown", MarkdownController.class, Constant.VIEW_PATH);
    }
}
