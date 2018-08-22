package com.hxkj;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.interceptor.PermissionInterceptor;
import com.hxkj.common.controller.BaseController;
import com.hxkj.auth.model.AuthMenu;
import com.jfinal.aop.Before;
import com.jfinal.aop.Clear;
import com.jfinal.ext.interceptor.SessionInViewInterceptor;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 主界面
 *
 * @author zhangchuang
 */
@Clear(PermissionInterceptor.class)
public class MainController extends BaseController {

    /**
     * 主界面首页
     */
    @Before(SessionInViewInterceptor.class)
    public void index() {
        render("main.html");
    }


    /**
     * 左侧菜单树 数据
     */
    public void permissionTree() {
        List<AuthMenu> ownAuthMenus = getSessionAttr(Constant.OWN_MENU);
        List<Map<String, Object>> maps = new ArrayList<Map<String, Object>>();
        // 简单的json格式数据，树形结构由前端 js算法处理
        if (ownAuthMenus != null) {
            for (AuthMenu authMenu : ownAuthMenus) {
                Map<String, Object> map = new HashMap<String, Object>();
                map.put("id", authMenu.getId());
                map.put("pid",authMenu.getPid());
                map.put("iconCls", authMenu.getIcon());
                map.put("url", authMenu.getUrl());
                map.put("text", authMenu.getName());
                maps.add(map);
            }
        }
        renderJson(maps);
    }
}
