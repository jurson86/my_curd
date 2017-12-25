package com.hxkj.read.service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.hxkj.common.util.ToolRandom;
import org.apache.http.client.fluent.Content;
import org.apache.http.client.fluent.Request;
import org.apache.log4j.Logger;

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
     * 小说分类
     *
     * @param gender
     * @param major
     * @param start
     * @param limit
     * @return
     */
    public static Map<String, Object> category(String gender, String major, Integer start, Integer limit) {
        Map<String, Object> map = new HashMap<String, Object>();
        try {
            Content content = Request.Get("http://novel.juhe.im/category-info?" +
                    "gender=" + gender +
                    "&type=hot&major=" + major +
                    "&start=" + start + "&limit=" + limit)
                    .setHeader("User-Agent", userAgents[ToolRandom.number(0, 6)])
                    .execute().returnContent();
            String jsonStr = content.asString(Charset.forName(charset));
            JSONObject jsonObject = JSON.parseObject(jsonStr);
            if (jsonObject.getInteger("code") == 1) {
                map.put("code", 1);
                JSONObject dataObj = (JSONObject) jsonObject.get("data");
                Integer total = dataObj.getInteger("total");
                if (total > 1000) {
                    map.put("total", 1000);
                } else {
                    map.put("total", dataObj.get("total"));
                }
                map.put("rows", dataObj.get("books"));
            } else {
                map.put("code", -1);
                map.put("message", jsonObject.getString("message"));
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
            Content content = Request.Get("http://api.zhuishushenqi.com/book/" + nid).setHeader("User-Agent", userAgents[ToolRandom.number(0, 6)])
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
            Content content = Request.Get("http://api.zhuishushenqi.com/mix-atoc/" + nid + "?view=chapters")
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
            Content content = Request.Get("http://chapter2.zhuishushenqi.com/chapter/" + url)
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

}
