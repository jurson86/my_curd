package com.hxkj.websocket.controller;

import com.hxkj.auth.model.AuthUser;
import com.hxkj.common.interceptor.PermissionInterceptor;
import com.hxkj.common.controller.BaseController;
import com.jfinal.aop.Clear;

@Clear(PermissionInterceptor.class) // 清理权限拦截器
public class WebsocketController extends BaseController {

    public void index() {
        AuthUser authUser = getSessionUser();
        setAttr("userId", authUser.getId());  // 当前登录的用户id
        render("websocket/websocket.html");
    }

}
