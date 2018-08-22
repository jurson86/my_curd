package com.hxkj.common.interceptor;

import com.hxkj.common.constant.Constant;
import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import org.apache.log4j.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 登录拦截器
 *
 * @author chuang
 * @date 2018-06-20 18:56:48
 */
public class LoginInterceptor implements Interceptor {
    private final static Logger LOG = Logger.getLogger(LoginInterceptor.class);

    @Override
    public void intercept(Invocation invocation) {
        LOG.debug("do LoginInterceptor ");

        HttpServletRequest request = (HttpServletRequest) invocation.getController().getRequest();
        HttpServletResponse response = (HttpServletResponse) invocation.getController().getResponse();
        HttpSession session = request.getSession();

        // 未登录 跳转到登录页面
        if (session.getAttribute(Constant.AUTH_USER) == null) {
            invocation.getController().redirect("/login/index");
            return;
        }

        invocation.invoke();
    }
}
