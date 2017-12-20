package com.hxkj;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.interceptor.AuthorityInterceptor;
import com.hxkj.common.util.BaseController;
import com.hxkj.system.model.SysMenu;
import com.jfinal.aop.Before;
import com.jfinal.aop.Clear;
import com.jfinal.ext.interceptor.SessionInViewInterceptor;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/11/15.
 */
public class MainController extends BaseController {

    /**
     * dashboard
     */
    @Clear(AuthorityInterceptor.class)
    @Before(SessionInViewInterceptor.class)
    public void index() {
        render("main.html");
    }


    /**
     * 权限菜单树
     */
    @Clear(AuthorityInterceptor.class)
    public void permissionTree() {
        List<SysMenu> ownSysMenus = getSessionAttr(Constant.OWN_MENU);
        List<Map<String, Object>> maps = new ArrayList<Map<String, Object>>();

        // 简单的json格式数据，树形结构由前端 js算法处理
        if (ownSysMenus != null) {
            for (SysMenu sysMenu : ownSysMenus) {
                Map<String, Object> map = new HashMap<String, Object>();
                map.put("id", sysMenu.getId());
                map.put("pid", sysMenu.getPid());
                map.put("iconCls", sysMenu.getIcon());
                map.put("url", sysMenu.getUrl());
                map.put("text", sysMenu.getName());
                maps.add(map);
            }

        }
        renderJson(maps);
    }
}
