package com.hxkj.common.config;

import com.hxkj.auth.model.*;
import com.hxkj.cms.model.CmsArticle;
import com.hxkj.cms.model.CmsArticleHtml;
import com.hxkj.cms.model.CmsArticleMd;
import com.hxkj.data.model.DataDict;
import com.hxkj.data.model.DataFile;
import com.hxkj.data.model.DataRegion;
import com.hxkj.sys.model.*;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;

/**
 * 数据库表 MappingKit
 *
 * @author zhangchuang
 */
public class MappingKit {

    private MappingKit() {
    }

    /**
     * 基础框架表映射
     *
     * @param arp
     */
    public static void mapping(ActiveRecordPlugin arp) {
        // 系统 模块
        arp.addMapping("sys_oplog", "id", SysOplog.class);         // 日志
        arp.addMapping("sys_notification_type", "id", SysNotificationType.class);     // 消息通知类型
        arp.addMapping("sys_notification", "id", SysNotification.class);              // 消息通知主表
        arp.addMapping("sys_notification_detail", "id", SysNotificationDetail.class); // 消息通知从表
        arp.addMapping("sys_notification_type_role", "notification_type_id,role_id", SysNotificationTypeRole.class);  // 消息通知类型 角色中间表
        arp.addMapping("sys_notification_type_user", "notification_type_id,user_id", SysNotificationTypeUser.class);  // 消息通知类型 用户中间表


        // 基础数据
        arp.addMapping("data_dict", "id", DataDict.class);
        arp.addMapping("data_file", "id", DataFile.class);
        arp.addMapping("data_region", "id", DataRegion.class);

        // cms 模块
        arp.addMapping("cms_article", "id", CmsArticle.class);
        arp.addMapping("cms_article_md", "id", CmsArticleMd.class);
        arp.addMapping("cms_article_html", "id", CmsArticleHtml.class);

        // 权限管理
        arp.addMapping("auth_menu", "id", AuthMenu.class);
        arp.addMapping("auth_org", "id", AuthOrg.class);
        arp.addMapping("auth_role", "id", AuthRole.class);
        arp.addMapping("auth_role_menu", "menu_id,role_id", AuthRoleMenu.class);
        arp.addMapping("auth_user", "id", AuthUser.class);
        arp.addMapping("auth_user_role", "role_id,user_id", AuthUserRole.class);
    }
}

