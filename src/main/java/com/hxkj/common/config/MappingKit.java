package com.hxkj.common.config;

import com.hxkj.bus.model.BusNovel;
import com.hxkj.bus.model.BusNovelChapter;
import com.hxkj.bus.model.BusTwoPk;
import com.hxkj.system.model.*;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;

/**
 * 数据库表 MappingKit
 */
public class MappingKit {


    public static void mapping(ActiveRecordPlugin arp) {

        // sys 模块
        arp.addMapping("sys_menu", "id", SysMenu.class);
        arp.addMapping("sys_oplog", "id", SysOplog.class);
        arp.addMapping("sys_org", "id", SysOrg.class);
        arp.addMapping("sys_role", "id", SysRole.class);
        arp.addMapping("sys_role_menu", "menu_id,role_id", SysRoleMenu.class);
        arp.addMapping("sys_user", "id", SysUser.class);
        arp.addMapping("sys_user_role", "role_id,user_id", SysUserRole.class);
        arp.addMapping("sys_dict", "id", SysDict.class);
        arp.addMapping("sys_file", "id", SysFile.class);

        // bus 模块
        arp.addMapping("bus_novel", "id", BusNovel.class);
        arp.addMapping("bus_novel_chapter", "id", BusNovelChapter.class);
        arp.addMapping("bus_two_pk", "id,id2", BusTwoPk.class);
    }
}

