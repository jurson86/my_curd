package com.hxkj.read.service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.hxkj.common.util.ToolRandom;
import org.apache.commons.io.FileUtils;
import org.apache.http.client.fluent.Content;
import org.apache.http.client.fluent.Request;
import org.apache.log4j.Logger;

import java.io.File;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;

public class NovelService {
    private final static Logger LOGGER = Logger.getLogger(NovelService.class);
    public static String charset = "UTF-8";
    public static String[] userAgents = {
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36", "" +
            "Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1",
            "Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1",
            "Mozilla/5.0 (Linux; Android 5.1.1; Nexus 6 Build/LYZ28E) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Mobile Safari/537.36",
            "Mozilla/5.0 (Linux; Android 5.0; SM-G900P Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Mobile Safari/537.36",
            "Mozilla/5.0 (iPad; CPU OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1"
    };


    /**
     * 模糊查询
     * @param keyword
     * @param start
     * @param limit
     */
    public  static Map<String, Object> fuzzySearch(String keyword, Integer start, Integer limit){
        Map<String, Object> map = new HashMap<String, Object>();
        try {
            String url ="http://api.zhuishushenqi.com/book/fuzzy-search?query=" +keyword +
                    "&start=" + start + "&limit=" + limit;
            LOGGER.info("fuzzySearch url: "+url);
            Content content = Request.Get(url)
                    .setHeader("User-Agent", userAgents[ToolRandom.number(0, 6)])
                    .execute().returnContent();
            String jsonStr = content.asString(Charset.forName(charset));
            JSONObject jsonObject = JSON.parseObject(jsonStr);
            if (!jsonObject.getBoolean("ok")) {
                map.put("code", -1);
                map.put("message", jsonObject.getString("msg"));
            } else {
                map.put("code", 1);
                Integer total = jsonObject.getInteger("total");
                // 允许翻1000 条
                if (total > 1000) {
                    map.put("total", 1000);
                } else {
                    map.put("total", jsonObject.get("total"));
                }
                map.put("rows", jsonObject.get("books"));
            }
        } catch (Exception e) {
            LOGGER.error(e.getMessage());
            map.put("code", -1);
            map.put("message", e.getMessage());
        }
        return map;

    }


    /**
     * 小说分类
     * @param category
     * @param start
     * @param limit
     * @return
     */
    public static Map<String, Object> category(String category, Integer start, Integer limit) {
        Map<String, Object> map = new HashMap<String, Object>();
        try {
            String url ="http://api.zhuishushenqi.com/book/by-categories?" +
                     category+
                    "&type=hot"+
                    "&start=" + start + "&limit=" + limit;
            LOGGER.info("category url: "+url);
            Content content = Request.Get(url)
                    .setHeader("User-Agent", userAgents[ToolRandom.number(0, 6)])
                    .execute().returnContent();
            String jsonStr = content.asString(Charset.forName(charset));
            JSONObject jsonObject = JSON.parseObject(jsonStr);
            if (!jsonObject.getBoolean("ok")) {
                map.put("code", -1);
                map.put("message", jsonObject.getString("msg"));
            } else {
                map.put("code", 1);
                Integer total = jsonObject.getInteger("total");
                // 允许翻1000 条
                if (total > 1000) {
                    map.put("total", 1000);
                } else {
                    map.put("total", jsonObject.get("total"));
                }
                map.put("rows", jsonObject.get("books"));
            }
        } catch (Exception e) {
            LOGGER.error(e.getMessage());
            map.put("code", -1);
            map.put("message", e.getMessage());
        }
        return map;

    }

    /**
     * 小说详情
     *
     * @param nid 小说id
     * @return
     */
    public static Map<String, Object> novel(String nid) {
        Map<String, Object> map = new HashMap<String, Object>();
        try {
            String url = "http://api.zhuishushenqi.com/book/" + nid;
            LOGGER.info("novel url:"+url);
            Content content = Request.Get(url).setHeader("User-Agent", userAgents[ToolRandom.number(0, 6)])
                    .execute().returnContent();
            String jsonStr = content.asString(Charset.forName(charset));
            JSONObject jsonObject = JSON.parseObject(jsonStr);
            if (!jsonObject.getBoolean("ok")) {
                map.put("code", -1);
                map.put("message", jsonObject.getString("msg"));
            } else {
                map.put("code", 1);
                map.put("bookDetail", jsonObject);
            }
        } catch (Exception e) {
            LOGGER.error(e.getMessage());
            map.put("code", -1);
            map.put("message", e.getMessage());
        }
        return map;
    }

    /**
     * 章节列表
     *
     * @param nid
     * @return
     */
    public static Map<String, Object> chapters(String nid) {
        Map<String, Object> map = new HashMap<String, Object>();
        try {
            String url = "http://api.zhuishushenqi.com/mix-atoc/" + nid + "?view=chapters";
            LOGGER.info("chapters url:"+url);
            Content content = Request.Get(url)
                    .setHeader("User-Agent", userAgents[ToolRandom.number(0, 6)])
                    .execute().returnContent();
            String jsonStr = content.asString(Charset.forName(charset));
            JSONObject jsonObject = JSON.parseObject(jsonStr);
            if (!jsonObject.getBoolean("ok")) {
                map.put("code", -1);
                map.put("message", jsonObject.getString("msg"));
            } else {
                map.put("code", 1);
                JSONObject jsonObjectTemp = (JSONObject) jsonObject.get("mixToc");
                map.put("rows", jsonObjectTemp.get("chapters"));
            }
        } catch (Exception e) {
            LOGGER.error(e.getMessage());
            map.put("code", -1);
            map.put("message", e.getMessage());
        }
        return map;
    }

    /**
     * 章节详情
     *
     * @param url
     * @return
     */
    public static Map<String, Object> chapter(String url) {
        Map<String, Object> map = new HashMap<String, Object>();
        try {
            url = URLEncoder.encode(url, "utf-8");
            String dUrl = "http://chapter2.zhuishushenqi.com/chapter/" + url;
            LOGGER.info("chapter url:"+dUrl);
            Content content = Request.Get(dUrl)
                    .setHeader("User-Agent", userAgents[ToolRandom.number(0, 6)])
                    .execute().returnContent();
            String jsonStr = content.asString(Charset.forName(charset));
            JSONObject jsonObject = JSON.parseObject(jsonStr);
            if (!jsonObject.getBoolean("ok")) {
                map.put("code", -1);
                map.put("message", jsonObject.getString("message"));
            } else {
                map.put("code", 1);
                map.put("chapterDetail", jsonObject.get("chapter"));
            }
        } catch (Exception e) {
            LOGGER.error(e.getMessage());
            map.put("code", -1);
            map.put("message", e.getMessage());
        }
        return map;
    }

    public void saveToTxt(String nid, File txtFile){

    }

}
