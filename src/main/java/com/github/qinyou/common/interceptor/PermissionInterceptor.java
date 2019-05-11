package com.github.qinyou.common.interceptor;

import com.github.qinyou.common.annotation.RequireButtonCode;
import com.github.qinyou.common.annotation.RequireMenuCode;
import com.github.qinyou.common.base.BaseController;
import com.github.qinyou.common.utils.StringUtils;
import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.kit.JsonKit;
import com.jfinal.kit.Ret;
import lombok.extern.slf4j.Slf4j;

import java.util.List;

/**
 * 权限菜单 拦截器, 拦截页面
 *
 * @author zhangchuang
 */
@SuppressWarnings("Duplicates")
@Slf4j
public class PermissionInterceptor implements Interceptor {

    @Override
    public void intercept(Invocation inv) {
        boolean flag = true;

        // 验证菜单编码
        RequireMenuCode requireMenuCode = inv.getController().getClass().getAnnotation(RequireMenuCode.class);
        if (requireMenuCode != null) {
            List<String> menuCodes = inv.getController().getSessionAttr("menuCodes");
            log.debug("menuCodes: {}", JsonKit.toJson(menuCodes));
            if (!menuCodes.contains(requireMenuCode.value())) {
                flag = false;
            }
        }

        // 验证按钮编码
        RequireButtonCode requireButtonCode = inv.getMethod().getAnnotation(RequireButtonCode.class);
        if (requireButtonCode != null) {
            List<String> buttonCodes = inv.getController().getSessionAttr("buttonCodes");
            log.debug("buttonCodes: {}", JsonKit.toJson(buttonCodes));
            if (!buttonCodes.contains(requireButtonCode.value())) {
                flag = false;
            }
        }

        if (flag) {
            inv.invoke();
            return;
        }

        // 无 权限响应
        BaseController baseController = (BaseController) inv.getController();
        baseController.addServiceLog("PermissionInterceptor: 访问无权限路径");
        String requestType = inv.getController().getHeader("X-Requested-With");
        if ("XMLHttpRequest".equals(requestType) || StringUtils.notEmpty(inv.getController().getPara("xmlHttpRequest"))) {
            Ret ret = Ret.create().setFail().set("msg", "无权限操作！您的行为已被记录到日志。");
            inv.getController().renderJson(ret);
        } else {
            inv.getController().render("/WEB-INF/views/common/no_permission.ftl");
        }
    }
}
