package com.hxkj.websocket.controller;

import com.hxkj.common.interceptor.AuthorityInterceptor;
import com.hxkj.common.util.BaseController;
import com.hxkj.system.model.SysUser;
import com.jfinal.aop.Clear;

@Clear(AuthorityInterceptor.class) // 清理权限拦截器
public class WebsocketController extends BaseController {

    public void index() {
        SysUser sysUser = getSessionUser();
        setAttr("userId", sysUser.getId());  // 当前登录的用户id
        render("websocket/websocket.html");
    }


}
