package com.hxkj.common.interceptor;

import com.hxkj.auth.model.AuthMenu;
import com.hxkj.common.constant.Constant;
import com.hxkj.common.controller.BaseController;
import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.kit.JsonKit;
import com.jfinal.kit.StrKit;
import org.apache.log4j.Logger;

import java.util.List;


/**
 * 权限拦截器, 只拦截到 页面级
 *
 * @author chuang
 * @date 2018-06-20 18:56:48
 */
public class PermissionInterceptor implements Interceptor {

    private final static Logger LOG = Logger.getLogger(PermissionInterceptor.class);

    public void intercept(Invocation inv) {
        String controllerKey = inv.getControllerKey();
        List<AuthMenu> ownAuthMenus = inv.getController().getSessionAttr(Constant.OWN_MENU);

        if (LOG.isDebugEnabled()) {
            LOG.debug("permission menu: " + JsonKit.toJson(ownAuthMenus));
        }
        for (AuthMenu authMenu : ownAuthMenus) {
            // 拥有权限
            if (StrKit.notBlank(authMenu.getUrl()) && !authMenu.getUrl().equals("/") && authMenu.getUrl().startsWith(controllerKey)) {
                if (LOG.isDebugEnabled()) {
                    LOG.debug(controllerKey + " 拥有 " + authMenu.getUrl() + ", 拥有权限. ");
                }
                inv.invoke();
                return;
            }
        }
        // 没有权限
        BaseController baseController = (BaseController) inv.getController();
        baseController.addOpLog("访问无权限路径[" + inv.getActionKey() + "]");
        inv.getController().render("/WEB-INF/views/common/no_permission.html");
    }

}
