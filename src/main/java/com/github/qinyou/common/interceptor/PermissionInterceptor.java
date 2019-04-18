package com.github.qinyou.common.interceptor;

import com.alibaba.fastjson.JSON;
import com.github.qinyou.common.annotation.RequirePermission;
import com.github.qinyou.common.base.BaseController;
import com.github.qinyou.common.config.Constant;
import com.github.qinyou.common.utils.StringUtils;
import com.github.qinyou.system.model.SysMenu;
import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.kit.JsonKit;
import com.jfinal.kit.Ret;
import lombok.extern.slf4j.Slf4j;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;

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
        List<SysMenu> sysMenus = inv.getController().getSessionAttr(Constant.SYS_USER_MENU);
        log.debug("permission menu: {}", JsonKit.toJson(sysMenus));

        String controllerKey = inv.getControllerKey();
        String actionKey = inv.getActionKey();

        // 通过 controller key 验证 菜单权限
        for (SysMenu sysMenu : sysMenus) {
            if (!sysMenu.getUrl().equals("/") && sysMenu.getUrl().equals(controllerKey)) {
                log.debug("c: {}, a:{} 拥有 {}, 拥有菜单权限. ", controllerKey, actionKey, sysMenu.getUrl());
                boolean flag = true;
                if (Objects.equals("index", inv.getMethodName())) {
                    log.debug("{}, 为 菜单页 ", actionKey);
                    menuPageOpe(sysMenu, inv);
                } else {
                    log.debug("{}, 非菜单页 ", actionKey);
                    flag = nMenuPageOpe(sysMenu, inv);
                }
                if (flag) {
                    inv.invoke();
                    return;
                }
            }
        }

        // 无权限 （TODO 根据类型更细的响应方式)
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


    /**
     * 菜单页操作，如果菜单需要按钮控制，将按钮编码放入 request
     *
     * @param sysMenu
     * @param inv
     */
    private void menuPageOpe(SysMenu sysMenu, Invocation inv) {
        // 需要控制按钮权限
        if ("Y".equals(sysMenu.getBtnControl())) {
            HttpServletRequest request = inv.getController().getRequest();
            Map<String, List<String>> sysMenuButtons = inv.getController().getSessionAttr(Constant.SYS_USER_MENU_BUTTONS);
            log.debug("menuButtons:{}", JSON.toJSONString(sysMenuButtons));
            log.debug("按钮编码放入request ");
            request.setAttribute("btnControl", true);
            request.setAttribute("btnCodes", sysMenuButtons.get(sysMenu.getId()) == null ? new ArrayList<>() : sysMenuButtons.get(sysMenu.getId()));
        }
    }

    /**
     * 非菜单页操作，判断是否有权限
     *
     * @param sysMenu
     * @param inv
     * @return
     */
    private boolean nMenuPageOpe(SysMenu sysMenu, Invocation inv) {
        boolean flag = true;
        RequirePermission requirePermission = inv.getMethod().getAnnotation(RequirePermission.class);
        if (requirePermission != null && "Y".equals(sysMenu.getBtnControl())) {
            Map<String, List<String>> sysMenuButtons = inv.getController().getSessionAttr(Constant.SYS_USER_MENU_BUTTONS);
            List<String> sysButtons = sysMenuButtons.get(sysMenu.getId());
            if (sysButtons == null || !sysButtons.contains(requirePermission.value())) {
                flag = false;
            }
        }
        return flag;
    }
}
