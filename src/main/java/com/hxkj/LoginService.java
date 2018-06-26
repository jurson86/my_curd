package com.hxkj;

import com.hxkj.auth.model.AuthMenu;

import java.util.*;

/**
 * 登录工具
 *
 * @author zhangchuang
 */
public class LoginService {

    /**
     * 构造树形菜单格式数据
     *
     * @param roleIds 角色id数字数组，以逗号分隔
     * @return 菜单列表
     */
    public List<AuthMenu> buildTreeUserMenu(String roleIds) {
        // 所有菜单
        List<AuthMenu> allMenuList = AuthMenu.dao.findAll();
        // 数据用户的菜单（叶子节点，数据库理论上不存储非叶子节点）
        List<AuthMenu> userMenuList = AuthMenu.dao.findByRoleIds(roleIds);

        // 放入必须的 非叶子节点
        Set<AuthMenu> chainSet = new HashSet<AuthMenu>();
        for (AuthMenu menu : userMenuList) {
            chainSet.add(menu);
            getPChain(allMenuList, menu, chainSet);
        }
        //排序
        userMenuList = new ArrayList<AuthMenu>(chainSet);
        Collections.sort(userMenuList, new Comparator<AuthMenu>() {
            public int compare(AuthMenu o1, AuthMenu o2) {
                if (o1.getSort() == null || o2.getSort() == null
                        || o1.getSort() < o2.getSort()) {
                    return -1;
                }
                return 0;
            }
        });
        return userMenuList;
    }

    /**
     * 获取 所有 父亲（祖）菜单
     *
     * @param list      所有的菜单
     * @param menu      要获取父菜单的菜单
     * @param chainlist 已经放入当前菜单的 set
     */
    private void getPChain(Collection<AuthMenu> list, AuthMenu menu, Set<AuthMenu> chainlist) {
        for (AuthMenu m : list) {
            if (menu.getPid() == m.getId()) {
                chainlist.add(m);
                getPChain(list, m, chainlist);
            }
        }
    }
}
