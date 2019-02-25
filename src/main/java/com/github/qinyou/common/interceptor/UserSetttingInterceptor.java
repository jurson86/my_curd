package com.github.qinyou.common.interceptor;

import com.github.qinyou.common.config.Constant;
import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * 用户配置
 */
public class UserSetttingInterceptor implements Interceptor {

    @Override
    public void intercept(Invocation inv) {
        HttpServletRequest request = inv.getController().getRequest();
        HttpSession session = inv.getController().getSession();
        request.setAttribute("theme", session.getAttribute(Constant.SYS_USER_THEME));

        inv.invoke();
    }
}
