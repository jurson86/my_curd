package com.hxkj.common.interceptor;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.BaseController;
import com.hxkj.system.model.SysMenu;
import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.kit.JsonKit;
import com.jfinal.kit.StrKit;
import org.apache.log4j.Logger;

import java.util.List;


/**
 * 权限拦截器
 */
public class AuthorityInterceptor implements Interceptor {

    private final static Logger LOG = Logger.getLogger(AuthorityInterceptor.class);


    public void intercept(Invocation inv) {
        String actionKey = inv.getActionKey();
        List<SysMenu> ownSysMenus = inv.getController().getSessionAttr(Constant.OWN_MENU);
        LOG.debug("permission menu: " + JsonKit.toJson(ownSysMenus));
        for (SysMenu sysMenu : ownSysMenus) {
            // 拥有权限
            if (StrKit.notBlank(sysMenu.getUrl()) && !sysMenu.getUrl().equals("/") && actionKey.startsWith(sysMenu.getUrl())) {
                LOG.debug(actionKey + " 等于 " + sysMenu.getUrl() + ", 拥有权限. ");
                inv.invoke();
                return;
            }
        }

        //没有权限
        BaseController baseController = (BaseController) inv.getController();
        baseController.addOpLog("访问无权限路径[" + actionKey + "]");

        inv.getController().render("/WEB-INF/views/common/no_permission.html");

    }

}
