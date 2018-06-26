package com.hxkj.common.config;

import com.hxkj.auth.model.*;
import com.hxkj.cms.model.CmsArticle;
import com.hxkj.cms.model.CmsArticleHtml;
import com.hxkj.cms.model.CmsArticleMd;
import com.hxkj.data.model.*;
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

    public static void mapping(ActiveRecordPlugin arp) {
        // sys 模块
        arp.addMapping("sys_oplog", "id", SysOplog.class);

        arp.addMapping("data_dict", "id", DataDict.class);
        arp.addMapping("data_file", "id", DataFile.class);
        arp.addMapping("data_province", "pid", DataProvince.class);
        arp.addMapping("data_city", "cid", DataCity.class);
        arp.addMapping("data_county", "oid", DataCounty.class);

        //arp.addMapping("sys_news", "id", SysNews.class);
        arp.addMapping("cms_article", "id", CmsArticle.class);
        arp.addMapping("cms_article_md", "id", CmsArticleMd.class);
        arp.addMapping("cms_article_html", "id", CmsArticleHtml.class);

        arp.addMapping("auth_menu", "id", AuthMenu.class);
        arp.addMapping("auth_org", "id", AuthOrg.class);
        arp.addMapping("auth_role", "id", AuthRole.class);
        arp.addMapping("auth_role_menu", "menu_id,role_id", AuthRoleMenu.class);
        arp.addMapping("auth_user", "id", AuthUser.class);
        arp.addMapping("auth_user_role", "role_id,user_id", AuthUserRole.class);
    }
}

