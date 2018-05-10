package com.hxkj.read.controller;

import com.alibaba.fastjson.JSONObject;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.ToolString;
import com.hxkj.read.service.NovelService;
import com.jfinal.kit.StrKit;

import java.io.IOException;
import java.util.Map;

public class NovelController extends BaseController {
    public void index() {
        render("read/novel.html");
    }

    public void query() {
        Integer pageNumber = getParaToInt("page",1);
        Integer limit = getParaToInt("rows",20) ;
        Integer start = (pageNumber - 1) * limit;  // 数据接口错误，返回的行数多（前两页)
        String keyword = getPara("keyword");
        if (StrKit.isBlank(keyword)) {
            String category = getPara("category","gender=male&major=玄幻");
            renderJson(NovelService.category(category, start, limit));
        } else {
            renderJson(NovelService.fuzzySearch(keyword, start, limit));
        }
    }

    /**
     * 小说 详情
     */
    public void novelDetail() {
        String nid = getPara(0);
        renderJson(NovelService.novel(nid));
    }

    /**
     * 章节列表页面
     */
    public void chapters(){
        setAttr("id",getPara(0));
        render("read/chapters.html");
    }


    /**
     * 章节列表数据
     */
    public void chaptersQuery() {
        String nid = getPara(0);
        renderJson(NovelService.chapters(nid));
    }


    /**
     * 章节详情
     */
    public void chapterDetail() {
        String url = getPara("url");
        Map<String, Object> detailMap = NovelService.chapter(url);
        String body = "获取章节错误！:( ";
        if((Integer)detailMap.get("code")==1){
            JSONObject chapterDetail = (JSONObject)detailMap.get("chapterDetail");
            body = chapterDetail.getString("body");
        }
        setAttr("content",body);
        render("read/chapter.html");
    }


    /**
     * 下载
     * @throws IOException
     */
    public void download() throws IOException {
        String nid = getPara("nid");
        String title = getPara("title");
        if (StrKit.isBlank(nid)) {
            renderText("小说id必须");
            return;
        }
        if (StrKit.isBlank(title)) {
            renderText("小说名字必须");
            return;
        }

        Map<String, Object> map = NovelService.saveInMapQuick(nid);
        Integer code = (Integer) map.get("code");
        if (code == -1) {
            renderText((String) map.get("message"));
            return;
        }
        StringBuilder sb = (StringBuilder) map.get("content");
        getResponse().setHeader("Accept-Ranges", "bytes");
        getResponse().setHeader("Content-Disposition", "attachment;" + ToolString.encodeFileName(getRequest(), title + ".txt"));
        renderText(sb.toString());

    }
}
