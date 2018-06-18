package com.hxkj.ordinaryUser.controller;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.Identities;
import com.hxkj.common.util.search.SearchSql;
import com.hxkj.ordinaryUser.model.Markdown;
import com.jfinal.aop.Before;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;

import java.nio.charset.Charset;
import java.util.Base64;
import java.util.Date;

/**
 * Markdown 控制器
 *
 * @author
 * @date 2018-06-18 18:25:03
 */
public class MarkdownController extends BaseController {
    public void index() {
        render("ordinaryUser/markdown.html");
    }

    @Before(SearchSql.class)
    public void query() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);
        Page<Markdown> markdownPage = Markdown.dao.page(pageNumber, pageSize, where);
        renderDatagrid(markdownPage);
    }

    public void newModel() {
        String id = getPara("id");
        if (id != null) {
            Markdown markdown = Markdown.dao.findById(id);
            setAttr("markdown", markdown);
        }
        render("ordinaryUser/markdown_form.html");
    }

    public void addAction() {
        Markdown markdown = getBean(Markdown.class, "");
        markdown.setId(Identities.uuid2());
        markdown.setUserId(getSessionUser().getId());
        markdown.setCreateTime(new Date());
        // markdown 文本 base64 编码
        markdown.setContent(Base64.getEncoder().encodeToString(markdown.getContent().getBytes(Charset.forName("UTF-8"))));
        boolean saveFlag = markdown.save();
        if (saveFlag) {
            renderText(Constant.ADD_SUCCESS);
        } else {
            renderText(Constant.ADD_FAIL);
        }
    }

    public void deleteAction() {
        String ids = getPara("ids");
        if(ids.contains(",")) {
            String deleteSql = "delete from markdown where id  in ( " + ids + " ) ";
            Db.update(deleteSql);
        }else{
            Markdown.dao.deleteById(ids);
        }
        renderText(Constant.DELETE_SUCCESS);
    }

    public void updateAction() {
        Markdown markdown = getBean(Markdown.class, "");
        markdown.setContent(Base64.getEncoder().encodeToString(markdown.getContent().getBytes(Charset.forName("UTF-8"))));
        markdown.setUserId(getSessionUser().getId());
        markdown.setCreateTime(new Date());
        boolean updateFlag = markdown.update();
        if (updateFlag) {
            renderText(Constant.UPDATE_SUCCESS);
        } else {
            renderText(Constant.UPDATE_FAIL);
        }
    }

    public void preview(){
        String id = getPara("id");
        Markdown markdown = Markdown.dao.findById(id);
        setAttr("markdown", markdown);
        render("ordinaryUser/markdown_preview.html");
    }
}
