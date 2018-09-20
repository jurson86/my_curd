package com.hxkj.common.config;

import com.hxkj.cms.controller.CmsArticleController;
import com.hxkj.cms.controller.EditorController;
import com.hxkj.cms.controller.ImgUploadController;
import com.hxkj.common.constant.Constant;
import com.jfinal.config.Routes;

/**
 * cms 内容管理
 */
public class cmsRoute extends Routes {
    @Override
    public void config() {
        // markdown 编辑器
        add("/cmsArticle", CmsArticleController.class, Constant.VIEW_PATH);
        add("/imgUpload", ImgUploadController.class, Constant.VIEW_PATH);
        add("/editor", EditorController.class, Constant.VIEW_PATH);
    }
}
