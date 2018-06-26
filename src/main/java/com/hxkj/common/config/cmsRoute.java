package com.hxkj.common.config;

import com.hxkj.cms.controller.CmsArticleController;
import com.hxkj.common.constant.Constant;
import com.jfinal.config.Routes;

/**
 * 普通用户 路由
 */
public class cmsRoute extends Routes {
    @Override
    public void config() {
        // markdown 编辑器
        add("/cmsArticle", CmsArticleController.class, Constant.VIEW_PATH);
    }
}
