package com.hxkj;

import com.hxkj.system.model.SysMenu;

import java.util.*;


public class LoginService {
    private List<SysMenu> allMenuList;
    private List<SysMenu> userMenuList;

    /**
     * 获得用户菜单
     */
    public List<SysMenu> getUserMenu(String roleIds) {

        allMenuList = SysMenu.dao.findAll();
        userMenuList = SysMenu.dao.findByRoleIds(roleIds);
        Set<SysMenu> chainSet = new HashSet<SysMenu>();
        for (SysMenu menu : userMenuList) {
            chainSet.add(menu);
            getPChain(allMenuList, menu, chainSet);
        }
        //排序
        List<SysMenu> chainList = new ArrayList<SysMenu>(chainSet);
        Collections.sort(chainList, new Comparator<SysMenu>() {
            public int compare(SysMenu o1, SysMenu o2) {
                if (o1.get("sort") == null || o2.get("sort") == null
                        || o1.getInt("sort") < o2.getInt("sort")) {
                    return -1;
                }
                return 0;
            }
        });

        // 每一个菜单都拥有当前菜单的所有子菜单
        //formatSubMenu(chainList);

        List<SysMenu> result = new ArrayList<SysMenu>();
        for (SysMenu menu : chainList) {
            result.add(menu);
        }
        return result;
    }

    /**
     * 获取 所有 父亲（祖）菜单
     *
     * @param list      所有的菜单
     * @param menu      要获取父菜单的菜单
     * @param chainlist 已经放入当前菜单的 set
     */
    public void getPChain(Collection<SysMenu> list, SysMenu menu, Set<SysMenu> chainlist) {
        for (SysMenu m : list) {
            if (menu.getInt("pid") == m.getInt("id")) {
                chainlist.add(m);
                getPChain(list, m, chainlist);
            }
        }
    }
}
