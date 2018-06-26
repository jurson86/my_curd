package com.hxkj.cms.controller;

import com.hxkj.cms.model.CmsArticleHtml;
import com.hxkj.cms.model.CmsArticleMd;
import com.hxkj.cms.service.MarkdownService;
import com.jfinal.aop.Before;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.tx.Tx;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.Identities;
import com.hxkj.common.util.search.SearchSql;
import com.hxkj.cms.model.CmsArticle;

import java.nio.charset.Charset;
import java.util.Base64;
import java.util.Date;

/**
 * cms_article 控制器
 * @author
 * @date 2018-06-25 19:59:08
 */
public class CmsArticleController extends BaseController{
        /**
         * 列表页
         */
        public void index(){
            String type = getPara(0);
            setAttr("type",type);
            render("cms/cmsArticle.html");
        }

        /**
         * 列表数据
         */
        @Before(SearchSql.class)
        public void query(){
            int pageNumber=getAttr("pageNumber");
            int pageSize=getAttr("pageSize");
            String where=getAttr(Constant.SEARCH_SQL);
            Page<CmsArticle> cmsArticlePage=CmsArticle.dao.page(pageNumber,pageSize,where);
            renderDatagrid(cmsArticlePage);
        }


        /**
         * 打开新增或者修改弹出框
         */
        public void newModel(){
            String id=getPara("id");
            String url;
            if(StrKit.notBlank(id)){
                CmsArticle cmsArticle=CmsArticle.dao.findById(id);
                setAttr("cmsArticle",cmsArticle);
                String type = cmsArticle.getType(); // m->markdown ; h->html
                if("m".equalsIgnoreCase(type)){
                    CmsArticleMd cmsArticleMd = CmsArticleMd.dao.findByCmsArticleId(cmsArticle.getId());
                    setAttr("cmsArticleMd",cmsArticleMd);
                    url="cms/cmsArticle_md_form.html";
                }else{
                    CmsArticleHtml cmsArticleHtml = CmsArticleHtml.dao.findByCmsArticleId(cmsArticle.getId());
                    setAttr("cmsArticleHtml",cmsArticleHtml);
                    url="cms/cmsArticle_html_form.html";
                }
            }else{
                String type = getPara("type");  // m->markdown ; h->html
                if("m".equalsIgnoreCase(type)){
                    url="cms/cmsArticle_md_form.html";
                }else{
                    url="cms/cmsArticle_html_form.html";
                }
            }
            render(url);
        }


        /**
         * 增加
         */
        @Before(Tx.class)
        public void addAction(){
            CmsArticle cmsArticle=getBean(CmsArticle.class,"");
            cmsArticle.set("id",Identities.id());
            cmsArticle.setUserId(getSessionUser().getId());
            cmsArticle.setCreateTime(new Date());

            cmsArticle.save();
            String content = getPara("content");
            if(cmsArticle.getType().equals("m")){
                // 存储 markdown
                CmsArticleMd cmsArticleMd = new CmsArticleMd();
                cmsArticleMd.setId(Identities.id());
                // 存储 base64，因为 markdown 文本中有需要转义的字符
                cmsArticleMd.setContent(Base64.getEncoder().encodeToString(content.getBytes(Charset.forName("UTF-8"))));
                cmsArticleMd.setCmsArticleId(cmsArticle.getId());
                cmsArticleMd.save();

                // 存储markdown parse 后的html
                String html = MarkdownService.parse(content);
                CmsArticleHtml cmsArticleHtml = new CmsArticleHtml();
                cmsArticleHtml.setId(Identities.id());
                cmsArticleHtml.setContent(html);
                cmsArticleHtml.setCmsArticleId(cmsArticle.getId());
                cmsArticleHtml.save();

            }else{
                // 存储 html
                CmsArticleHtml cmsArticleHtml = new CmsArticleHtml();
                cmsArticleHtml.setId(Identities.id());
                cmsArticleHtml.setContent(content);
                cmsArticleHtml.setCmsArticleId(cmsArticle.getId());
                cmsArticleHtml.save();
            }

            renderText(Constant.ADD_SUCCESS);
        }

        /**
         * 删除
         */
        @Before(Tx.class)
        public void deleteAction(){
            String ids = getPara("ids");
            if(ids.contains(",")){
                ids = ids.replaceAll(",","','");
                String deleteSql = "delete from cms_article where id  in ( '" + ids + "' ) ";
                Db.update(deleteSql);
                deleteSql = "delete from cms_article_md where cms_article_id  in ( '" + ids + "' ) ";
                Db.update(deleteSql);
                deleteSql = "delete from cms_article_html where cms_article_id  in ( '" + ids + "' ) ";
                Db.update(deleteSql);
            }else{
                CmsArticle.dao.deleteById(ids);
                CmsArticleHtml.dao.deleteByCmsArticleId(ids);
                CmsArticleMd.dao.deleteByCmsArticleId(ids);
            }
            renderText(Constant.DELETE_SUCCESS);
        }

        /**
         * 修改
         */
        @Before(Tx.class)
        public void updateAction(){
            CmsArticle cmsArticle=getBean(CmsArticle.class,"");
            cmsArticle.setLastEditTime(new Date());
            cmsArticle.update();
            String content = getPara("content");
            if("m".equals(cmsArticle.getType())){
                // 更新 md
                CmsArticleMd cmsArticleMd = CmsArticleMd.dao.findByCmsArticleId(cmsArticle.getId());
                cmsArticleMd.setContent(Base64.getEncoder().encodeToString(content.getBytes(Charset.forName("UTF-8"))));
                cmsArticleMd.update();

                // 更新 md parse 后的 html
                CmsArticleHtml cmsArticleHtml = CmsArticleHtml.dao.findByCmsArticleId(cmsArticle.getId());
                String html = MarkdownService.parse(content);
                cmsArticleHtml.setContent(html);
                cmsArticleHtml.update();

            }else{
                // 更新 html
                CmsArticleHtml cmsArticleHtml = CmsArticleHtml.dao.findByCmsArticleId(cmsArticle.getId());
                cmsArticleHtml.setContent(content);
                cmsArticleHtml.update();
            }
            renderText(Constant.UPDATE_SUCCESS);
        }



    public void viewContent() {
        String id = getPara("id");
        CmsArticle cmsArticle = CmsArticle.dao.findById(id);
        setAttr("cmsArticle", cmsArticle);
        CmsArticleHtml cmsArticleHtml = CmsArticleHtml.dao.findByCmsArticleId(cmsArticle.getId());
        setAttr("cmsArticleHtml",cmsArticleHtml);

        if(cmsArticle.getType().equals("m")){
            render("cms/cms_view_md.html");
        }else{
            render("cms/cms_view_html.html");
        }
    }
}
