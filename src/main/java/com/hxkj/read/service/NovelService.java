package com.hxkj.read.service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.hxkj.common.util.ToolRandom;
import org.apache.commons.io.FileUtils;
import org.apache.http.client.fluent.Content;
import org.apache.http.client.fluent.Request;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class NovelService {


    private final static Logger LOG = LoggerFactory.getLogger(NovelService.class);
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
     *
     * @param keyword
     * @param start
     * @param limit
     */
    public static Map<String, Object> fuzzySearch(String keyword, Integer start, Integer limit) {
        Map<String, Object> map = new HashMap<String, Object>();
        try {
            String url = "http://api.zhuishushenqi.com/book/fuzzy-search?query=" + keyword +
                    "&start=" + start + "&limit=" + limit;
            LOG.debug("fuzzySearch url: {}", url);
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
            LOG.error(e.getMessage());
            map.put("code", -1);
            map.put("message", e.getMessage());
        }
        return map;

    }


    /**
     * 小说分类
     *
     * @param category
     * @param start
     * @param limit
     * @return
     */
    public static Map<String, Object> category(String category, Integer start, Integer limit) {
        Map<String, Object> map = new HashMap<String, Object>();
        try {
            String url = "http://api.zhuishushenqi.com/book/by-categories?" +
                    category +
                    "&type=hot" +
                    "&start=" + start + "&limit=" + limit;
            LOG.debug("category url: {}", url);
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
            LOG.error(e.getMessage());
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
            LOG.debug("novel url: {}", url);
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
            LOG.error(e.getMessage());
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
            LOG.debug("chapters url: {}", url);
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
            LOG.error(e.getMessage());
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
            LOG.debug("chapter url: {}", dUrl);
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
            LOG.error(e.getMessage());
            map.put("code", -1);
            map.put("message", e.getMessage());
        }
        return map;
    }

    /**
     * 小说文本放入 map
     *
     * @param nid
     * @return
     */
    public static Map<String, Object> saveInMap(String nid) {
        Map<String, Object> map = new HashMap<String, Object>();
        StringBuilder sb = new StringBuilder();
        Map<String, Object> stepOneMap = chapters(nid);
        Integer stepOneCode = (Integer) stepOneMap.get("code");
        if (stepOneCode == -1) {
            return stepOneMap;
        }
        JSONArray jsonArray = (JSONArray) stepOneMap.get("rows");

        Iterator it = jsonArray.iterator();
        int count = 1;
        while (it.hasNext()) {
            JSONObject chapterObj = (JSONObject) it.next();
            if (!chapterObj.getBoolean("unreadble")) {
                Map<String, Object> stepTwoMap = chapter(chapterObj.getString("link"));
                Integer stepTwoCode = (Integer) stepTwoMap.get("code");
                if (stepTwoCode == 1) {
                    JSONObject cObj = (JSONObject) stepTwoMap.get("chapterDetail");
                    sb.append("第 " + count + " 章 \n" + chapterObj.getString("title") + " \n" + cObj.getString("body") + " \n");
                    System.out.println("count: " + count + chapterObj.getString("title"));
                    count++;
                }
            }
        }
        map.put("code", 1);
        map.put("content", sb);
        return map;
    }


    /**
     * 小说文本存入 文件中
     *
     * @param nid
     * @param txtFile
     * @return
     */
    public static Map<String, Object> saveToTxt(String nid, File txtFile) {
        Map<String, Object> map = new HashMap<String, Object>();
        Map<String, Object> stepOneMap = chapters(nid);
        Integer stepOneCode = (Integer) stepOneMap.get("code");
        if (stepOneCode == -1) {
            return stepOneMap;
        }
        JSONArray jsonArray = (JSONArray) stepOneMap.get("rows");

        Iterator it = jsonArray.iterator();
        int count = 1;
        while (it.hasNext()) {
            JSONObject chapterObj = (JSONObject) it.next();
            if (!chapterObj.getBoolean("unreadble")) {
                Map<String, Object> stepTwoMap = chapter(chapterObj.getString("link"));
                Integer stepTwoCode = (Integer) stepTwoMap.get("code");
                if (stepTwoCode == 1) {
                    try {
                        JSONObject cObj = (JSONObject) stepTwoMap.get("chapterDetail");
                        FileUtils.write(txtFile, "第 " + count + " 章 \n" + chapterObj.getString("title") + " \n" + cObj.getString("body") + " \n", "UTF-8", true);
                        System.out.println("count: " + count + chapterObj.getString("title"));
                        count++;
                    } catch (IOException e) {
                        e.printStackTrace();
                        LOG.error(e.getMessage());
                    }
                }
            }
        }
        map.put("code", 1);
        map.put("path", txtFile.getAbsolutePath());
        return map;
    }


    /**
     * 不适合在 用户很多的 web 环境下
     *
     * @param nid
     * @return
     */
    public static Map<String, Object> saveInMapQuick(String nid) {
        ExecutorService executorService = Executors.newFixedThreadPool(5);
        Map<String, Object> map = new HashMap<String, Object>();
        StringBuilder sb = new StringBuilder();
        Map<String, Object> stepOneMap = chapters(nid);
        Integer stepOneCode = (Integer) stepOneMap.get("code");
        if (stepOneCode == -1) {
            return stepOneMap;
        }
        JSONArray jsonArray = (JSONArray) stepOneMap.get("rows");
        Iterator it = jsonArray.iterator();
        while (it.hasNext()) {
            JSONObject jsonObject = (JSONObject) it.next();
            executorService.execute(new Runnable() {
                @Override
                public void run() {
                    if (!jsonObject.getBoolean("unreadble")) {
                        Map<String, Object> stepTwoMap = chapter(jsonObject.getString("link"));
                        Integer stepTwoCode = (Integer) stepTwoMap.get("code");
                        if (stepTwoCode == 1) {
                            JSONObject cObj = (JSONObject) stepTwoMap.get("chapterDetail");
                            jsonObject.put("body", cObj.getString("body"));
                        }
                    }
                }
            });
        }
        executorService.shutdown();
        while (true) {
            if (executorService.isTerminated()) {
                Iterator it2 = jsonArray.iterator();
                int count = 1;
                while (it2.hasNext()) {
                    JSONObject jsonObject = (JSONObject) it2.next();
                    sb.append("第 " + (count) + " 章 \n" + jsonObject.getString("title") + " \n" + jsonObject.getString("body") + " \n");
                    //System.out.println("count: " + count + jsonObject.getString("title"));
                    count++;
                }
                break;
            }
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        map.put("code", 1);
        map.put("content", sb);
        return map;
    }


    public static Map<String, Object> saveToTxtQuick(String nid, File txtFile) {
        Map<String, Object> map = new HashMap<String, Object>();
        ExecutorService executorService = Executors.newFixedThreadPool(5);
        Map<String, Object> stepOneMap = chapters(nid);
        Integer stepOneCode = (Integer) stepOneMap.get("code");
        if (stepOneCode == -1) {
            return stepOneMap;
        }
        JSONArray jsonArray = (JSONArray) stepOneMap.get("rows");
        Iterator it = jsonArray.iterator();
        while (it.hasNext()) {
            JSONObject jsonObject = (JSONObject) it.next();
            executorService.execute(new Runnable() {
                @Override
                public void run() {
                    if (!jsonObject.getBoolean("unreadble")) {
                        Map<String, Object> stepTwoMap = chapter(jsonObject.getString("link"));
                        Integer stepTwoCode = (Integer) stepTwoMap.get("code");
                        if (stepTwoCode == 1) {
                            JSONObject cObj = (JSONObject) stepTwoMap.get("chapterDetail");
                            jsonObject.put("body", cObj.getString("body"));
                        }
                    }
                }
            });
        }
        executorService.shutdown();
        while (true) {
            if (executorService.isTerminated()) {
                Iterator it2 = jsonArray.iterator();
                int count = 0;
                while (it2.hasNext()) {
                    JSONObject jsonObject = (JSONObject) it2.next();
                    try {
                        FileUtils.write(txtFile, "第 " + (count + 1) + " 章 \n" + jsonObject.getString("title") + " \n" + jsonObject.getString("body") + " \n", "UTF-8", true);
                        count++;
                    } catch (IOException e) {
                        e.printStackTrace();
                        LOG.error(e.getMessage());
                    }
                }
                break;
            }
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        map.put("code", 1);
        map.put("path", txtFile.getAbsolutePath());
        return map;
    }
}
