package com.hxkj.common.filter;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.UrlUtil;
import org.apache.log4j.Logger;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * 登录拦截器（放置在 Jfinal 拦截器之前的 filter)
 * 使用filter比jfinal interceptor 更方便定制
 */
public class LoginFilter implements Filter {
    private final static Logger LOG = Logger.getLogger(LoginFilter.class);

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
        LOG.debug("curl:" + curUrl);
        // 上下文路径
        String contextPath = request.getContextPath();
        req.setAttribute("ctx", contextPath);

        if (curUrl.startsWith(contextPath + "/res")
                || curUrl.startsWith(contextPath + "/api")
                || curUrl.startsWith(contextPath + "/login")) {
            LOG.debug("loginFilter不拦截：" + curUrl);
        } else {
            if (session.getAttribute(Constant.SYSTEM_USER) == null) {
                response.sendRedirect(request.getContextPath() + "/login/index");
                return;
            }
            if (curUrl.equals(contextPath) || curUrl.equals(contextPath + "/index")) {
                response.sendRedirect(request.getContextPath() + "/main");
                return;
            }
        }

        filterChain.doFilter(req, res);
    }


    @Override
    public void destroy() {
    }
}
