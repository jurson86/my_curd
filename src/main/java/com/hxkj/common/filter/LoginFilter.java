package com.hxkj.common.filter;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.UrlUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


/**
 * 登录拦截器（放置在 Jfinal 拦截器之前的 filter)
 * 不拦截静态、登录页面、登录表单提交地址，如果为登录跳转到登录页面，如果已登录当前地址为/ 或 /index  跳转到 /main 页面
 * 使用 filter 而 不是 jfinal interceptor 是为了更方便控制未登录之前的无效路由
 */
public class LoginFilter implements Filter {
    private final static Logger LOG = LoggerFactory.getLogger(LoginFilter.class);

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest req, ServletResponse res, FilterChain filterChain)
            throws IOException, ServletException {

        LOG.debug("do servlet filter: LoginFilter ");

        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;

        // 有则返回，无则创建；
        HttpSession session = request.getSession();

        // 当前路径
        String curUrl = UrlUtil.formatUrl(request.getRequestURI());
        LOG.info("curl:{}",curUrl);

        //上下文路径
        String contextPath = request.getContextPath();
        req.setAttribute("ctx", contextPath);

        // 不拦截 登录、静态资源
        if (!curUrl.endsWith("login/index")
                && !curUrl.endsWith("login/action")
                && !curUrl.startsWith(contextPath + "/res")) {

            // 登录，跳转到登录界面
            if (session.getAttribute(Constant.SYSTEM_USER) == null) {
                response.sendRedirect(request.getContextPath() + "/login/index");
                return;
            }

            // 当前路径为 contextPath 或者 contextPath+"index" 时 跳转到  main
            if (curUrl.equals(contextPath) || curUrl.equals(contextPath + "/index")) {
                response.sendRedirect(request.getContextPath() + "/main");
                return;
            }
        }

        // 静态资源、非登录肉有、已登录 通过
        filterChain.doFilter(req, res);
    }


    @Override
    public void destroy() {

    }
}
