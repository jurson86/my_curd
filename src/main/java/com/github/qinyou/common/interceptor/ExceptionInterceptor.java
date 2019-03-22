package com.github.qinyou.common.interceptor;

import com.alibaba.fastjson.JSON;
import com.github.qinyou.common.config.Constant;
import com.github.qinyou.common.utils.Id.IdUtils;
import com.github.qinyou.common.utils.StringUtils;
import com.github.qinyou.common.utils.WebUtils;
import com.github.qinyou.system.model.SysVisitLog;
import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.core.Controller;
import com.jfinal.kit.PropKit;
import com.jfinal.kit.Ret;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.exception.ExceptionUtils;

import java.util.Date;
import java.util.Map;

/**
 * 全局异常 json, 附带 记录访问日志
 *
 * @author zhangchuang
 */
@SuppressWarnings("Duplicates")
@Slf4j
public class ExceptionInterceptor implements Interceptor {
    private final static Boolean visitLog = PropKit.use("config.properties").getBoolean("visitLog");

    @Override
    public void intercept(Invocation inv) {
        String errMsg = null;
        try {
            inv.invoke();
        } catch (Exception e) {
            log.error(e.getMessage(), e);
            errMsg = ExceptionUtils.getMessage(e);
        }

        // 访问日志
        if (visitLog) {
            Controller controller = inv.getController();
            SysVisitLog sysVisitLog = new SysVisitLog();
            sysVisitLog.setId(IdUtils.id());
            sysVisitLog.setSysUserIp(WebUtils.getRemoteAddress(controller.getRequest()));
            sysVisitLog.setSysUser(WebUtils.getSessionUsername(controller));
            sysVisitLog.setUrl(inv.getActionKey());
            sysVisitLog.setRequestType(controller.getRequest().getMethod());
            sysVisitLog.setCreateTime(new Date());
            Map<String, String[]> params = controller.getRequest().getParameterMap();
            if (params.keySet().size() > 0) {
                sysVisitLog.setParam(JSON.toJSONString(params));
                if (sysVisitLog.getParam().length() > 100) {
                    sysVisitLog.setParam("超长文本参数");
                }
            }

            sysVisitLog.setError(errMsg);
            sysVisitLog.save();
        }

        // 返回异常信息
        if (StringUtils.notEmpty(errMsg)) {
            String requestType = inv.getController().getRequest().getHeader("X-Requested-With");
            if ("XMLHttpRequest".equals(requestType) || StringUtils.notEmpty(inv.getController().getPara("xmlHttpRequest"))) {
                Ret ret = Ret.create().set("state", "error").set("msg", errMsg);
                inv.getController().renderJson(ret);
            } else {
                inv.getController().setAttr("errorMsg", errMsg);
                inv.getController().render(Constant.VIEW_PATH + "/common/500.ftl");
            }
        }
    }

}
