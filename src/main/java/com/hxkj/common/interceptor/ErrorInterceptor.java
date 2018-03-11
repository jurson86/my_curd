package com.hxkj.common.interceptor;

import com.hxkj.common.exception.ErrorMsgException;
import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.core.Controller;

import java.util.HashMap;
import java.util.Map;

/**
 *  错误消息 前端提示（暂时无用)
 *  发生异常后异常信息作为json返回
 */
public class ErrorInterceptor implements Interceptor {

    public void intercept(Invocation inv) {
        Controller c = inv.getController();
        try {
            inv.invoke();
        } catch (ErrorMsgException e) {
            if (c.getRequest().getHeader("x-requested-with") == null || !c.getRequest().getHeader("x-requested-with").equalsIgnoreCase("XMLHttpRequest")) {
                // 非ajax 请求
                c.renderText(e.getMessage());
            } else {
                // ajax 请求
                Map<String, Object> result = new HashMap<String, Object>();
                result.put("result", "fail");
                result.put("msg", e.getMessage());
                c.renderJson(result);
            }
        }
    }

}
