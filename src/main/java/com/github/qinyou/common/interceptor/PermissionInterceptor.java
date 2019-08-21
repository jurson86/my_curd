package com.github.qinyou.common.interceptor;

import com.github.qinyou.common.annotation.RequireButtonCode;
import com.github.qinyou.common.annotation.RequireMenuCode;
import com.github.qinyou.common.utils.StringUtils;
import com.github.qinyou.common.web.BaseController;
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
@Slf4j
public class PermissionInterceptor implements Interceptor {

    @Override
    public void intercept(Invocation inv) {
        boolean flag = true;

        // 验证菜单权限
        RequireMenuCode requireMenuCode = inv.getController().getClass().getAnnotation(RequireMenuCode.class);
        if (requireMenuCode != null) {
            List<String> menuCodes = inv.getController().getSessionAttr("menuCodes");
            log.debug("menuCodes: {}", JsonKit.toJson(menuCodes));
            if (!menuCodes.contains(requireMenuCode.value())) {
                flag = false;
            }
        }

        if(flag){
            // 验证按钮 权限
            RequireButtonCode requireButtonCode = inv.getMethod().getAnnotation(RequireButtonCode.class);
            if (requireButtonCode != null) {
                List<String> buttonCodes = inv.getController().getSessionAttr("buttonCodes");
                log.debug("buttonCodes: {}", JsonKit.toJson(buttonCodes));
                if (!buttonCodes.contains(requireButtonCode.value())) {
                    flag = false;
                }
            }
        }

        if (flag) {
            // 菜单权限、按钮权限 都具备 放行
            inv.invoke();
            return;
        }

        // 无权限响应
        BaseController baseController = (BaseController) inv.getController();
        String requestType = inv.getController().getHeader("X-Requested-With");
        if ("XMLHttpRequest".equals(requestType) || StringUtils.notEmpty(inv.getController().getPara("xmlHttpRequest"))) {
            Ret ret = Ret.create().setFail().set("msg", "无权限操作！您的行为已被记录到日志。"); // 其实并没有，可以自行扩展
            inv.getController().renderJson(ret);
        } else {
            inv.getController().render("/WEB-INF/views/common/no_permission.ftl");
        }
    }
}
