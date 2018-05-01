package com.hxkj;

import com.hxkj.system.model.SysMenu;

import java.util.*;

/**
 * 登录工具
 * @author  zhangchuang
 */
public class LoginService {

    /**
     * 构造树形菜单格式数据
     * @param roleIds 角色id数字数组，以逗号分隔
     * @return 菜单列表
     */
    public List<SysMenu> buildTreeUserMenu(String roleIds) {
        // 所有菜单
        List<SysMenu> allMenuList = SysMenu.dao.findAll();
        // 数据用户的菜单（叶子，不包含非叶子）
        List<SysMenu> userMenuList = SysMenu.dao.findByRoleIds(roleIds);
        // 放入必须的 非叶子节点
        Set<SysMenu> chainSet = new HashSet<SysMenu>();
        for (SysMenu menu : userMenuList) {
            chainSet.add(menu);
            getPChain(allMenuList, menu, chainSet);
        }
        //排序
        userMenuList= new ArrayList<SysMenu>(chainSet);
        Collections.sort(userMenuList, new Comparator<SysMenu>() {
            public int compare(SysMenu o1, SysMenu o2) {
                if (o1.get("sort") == null || o2.get("sort") == null
                        || o1.getInt("sort") < o2.getInt("sort")) {
                    return -1;
                }
                return 0;
            }
        });
        return userMenuList;
    }

    /**
     * 获取 所有 父亲（祖）菜单
     * @param list 所有的菜单
     * @param menu 要获取父菜单的菜单
     * @param chainlist 已经放入当前菜单的 set
     */
    private void getPChain(Collection<SysMenu> list, SysMenu menu, Set<SysMenu> chainlist) {
        for (SysMenu m : list) {
            if (menu.getInt("pid") == m.getInt("id")) {
                chainlist.add(m);
                getPChain(list, m, chainlist);
            }
        }
    }
}
