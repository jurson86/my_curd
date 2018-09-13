package com.hxkj.ws.controller;

import com.hxkj.auth.model.AuthUser;
import com.hxkj.common.controller.BaseController;
import com.hxkj.common.interceptor.PermissionInterceptor;
import com.hxkj.ws.server.UserIdEncryptUtils;
import com.jfinal.aop.Clear;


/**
 * 聊天路由
 */
@Clear(PermissionInterceptor.class)
public class WebSocketController extends BaseController {
    public void index() {
        AuthUser authUser = getSessionUser();
        setAttr("userId",UserIdEncryptUtils.encrypt( authUser.getId().toString(),UserIdEncryptUtils.CURRENT_USER_ID_AESKEY));
        render("ws/chat.html");
    }

}
