package com.hxkj.read.controller;

import com.hxkj.common.util.BaseController;
import com.hxkj.read.service.NovelService;

public class NovelController extends BaseController {

    public void index() {
        render("read/novel.html");
    }

    public void category() {
        String gender = getPara("gender") == null ? "male" : getPara("gender");
        String major = getPara("major") == null ? "都市" : getPara("major");
        Integer pageNumber = getParaToInt("page") == null ? 1 : getParaToInt("page");
        Integer limit = getParaToInt("rows") == null ? 20 : getParaToInt("rows");
        Integer start = (pageNumber - 1) * limit;
        renderJson(NovelService.category(gender, major, start, limit));
    }

    public void novel() {
        String nid = getPara(0);
        renderJson(NovelService.novel(nid));
    }

    public void chapters() {
        String nid = getPara(0);
        renderJson(NovelService.chapters(nid));
    }

    public void chapter() {
        String url = getPara(0);
        renderJson(NovelService.chapter(url));
    }
}
