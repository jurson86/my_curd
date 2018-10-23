package com.hxkj.common.util;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.google.common.base.Preconditions;
import com.jfinal.kit.StrKit;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.fluent.Request;
import org.apache.http.message.BasicNameValuePair;
import org.apache.log4j.Logger;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/***
 *  网页爬虫工具
 */
public class CrawerUtils {

    private final static Logger LOG = Logger.getLogger(CrawerUtils.class);

    // 请求编码
    private final static String DEFAULT_CHARSET = "UTF-8";
    // useragent 数组
    private final static String[] USER_AGNETS = {
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36", "" +
            "Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1",
            "Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1",
            "Mozilla/5.0 (Linux; Android 5.1.1; Nexus 6 Build/LYZ28E) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Mobile Safari/537.36",
            "Mozilla/5.0 (Linux; Android 5.0; SM-G900P Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Mobile Safari/537.36",
            "Mozilla/5.0 (iPad; CPU OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1"
    };
    // 默认网络请求超时时间
    private final static int DEFAULT_TIMEOUT = 5000;
    // 网络请求失败后默认重试多少次
    private final static int DEFAULT_FAIL_RETRY_TIMES = 3;


    /**
     * 返回 随机的 userAgent
     *
     * @return
     */
    public static String randomUserAgent() {
        return USER_AGNETS[RandomUtils.number(0, USER_AGNETS.length)];
    }


    /**
     * get 请求  获得 Document, 使用 Jsoup
     *
     * @param connection 通过 Jsoup.connect(url) 构造的对象， 可添加任意配置项
     * @return 无结果返回null
     */
    public static Document getDocument(Connection connection) {
        return getDocument(connection, DEFAULT_FAIL_RETRY_TIMES);
    }

    /**
     * get 请求  获得 Document, 使用 Jsoup
     *
     * @param connection 通过 Jsoup.connect(url) 构造的对象， 可添加任意配置项
     * @param retryTimes 重试次数
     * @return
     */
    public static Document getDocument(Connection connection, int retryTimes) {
        Preconditions.checkNotNull(connection, "connection 对象不可为空");
        Document doc = null;
        for (int i = 1; i <= retryTimes; i++) {
            try {
                doc = connection.get();
                break;
            } catch (IOException e) {
                // LOG.error(e.getMessage(),e);
                if (LOG.isInfoEnabled()) {
                    LOG.info(" ----- get 网络请求 第 " + i + " 次 失败");
                }
            }
        }
        return doc;
    }


    /**
     * post 请求 获得 Document， 使用 Jsoup
     *
     * @param connection 通过 Jsoup.connect(url) 构造的对象， 可添加任意配置项
     * @return 无结果返回null
     */
    public static Document postDocument(Connection connection) {
        return postDocument(connection, DEFAULT_FAIL_RETRY_TIMES);
    }

    /**
     * post 请求 获得 Document， 使用 Jsoup
     *
     * @param connection 通过 Jsoup.connect(url) 构造的对象， 可添加任意配置项
     * @param retryTimes 重试次数
     * @return
     */
    public static Document postDocument(Connection connection, int retryTimes) {
        Preconditions.checkNotNull(connection, "connection 对象不可为空");
        Document doc = null;
        for (int i = 1; i <= retryTimes; i++) {
            try {
                doc = connection.post();
                break;
            } catch (IOException e) {
                // LOG.error(e.getMessage(),e);
                if (LOG.isInfoEnabled()) {
                    LOG.info(" ----- post 网络请求 第 " + i + " 次 失败");
                }
            }
        }
        return doc;
    }


    // TODO.   添加 Phantomjs 渲染后的 Document 方法
    // TODO.   添加 验证码获取方法，验证码图片识别方法


    /**
     * get 请求 获得 json 使用 HttpClient
     *
     * @param url
     * @param cookieValue 可为空
     * @param userAgent   可为空
     * @return 无结果返回Null
     */
    public static JSONObject getJSON(String url, String cookieValue, String userAgent) {
        return getJSON(url, cookieValue, userAgent, DEFAULT_FAIL_RETRY_TIMES);
    }

    /**
     * get 请求 获得 json, 使用 HttpClient
     *
     * @param url
     * @param cookieValue 可为空
     * @param userAgent   可为空
     * @param retryTimes  重试次数，大于等于1
     * @return 无结果返回Null
     */
    public static JSONObject getJSON(String url, String cookieValue, String userAgent, int retryTimes) {
        Preconditions.checkNotNull(url, " url 参数 不可为 null");
        Preconditions.checkNotNull(retryTimes, " retryTimes 参数不可为null");
        Preconditions.checkState(retryTimes < 1, "retryTimes 参数必须大于或者等于1 ");

        Request request = Request.Get(url);

        request.setHeader("Accept", "application/json, text/javascript, */*; q=0.01");
        if (StrKit.notBlank(cookieValue)) {
            request.setHeader("Cookie", cookieValue);
        }
        if (StrKit.notBlank(userAgent)) {
            request.setHeader("User-Agent", userAgent);
        }
        request.connectTimeout(DEFAULT_TIMEOUT);
        JSONObject jsonObject = null;

        for (int i = 1; i <= retryTimes; i++) {
            try {
                String jsonStr = request.execute().returnContent().asString();
                jsonObject = JSON.parseObject(jsonStr);
                break;
            } catch (Exception e) {
                LOG.error(e.getMessage(), e);
                if (LOG.isInfoEnabled()) {
                    LOG.info(" ----- getjson  网络请求 第 " + i + " 次 失败 url:" + url);
                }
            }
        }

        return jsonObject;
    }


    /**
     * post 请求 response 的 所有 header， 使用httpClient
     *
     * @param url
     * @param nameValuePairs
     * @return 无结果返回null
     */
    public static Header[] postAllHeaders(String url, List<NameValuePair> nameValuePairs) {
        Preconditions.checkNotNull(url, "url 参数不可为 null");
        Preconditions.checkNotNull(nameValuePairs, "nameValuePairs 参数不可为 null");

        Header[] headers = null;
        try {
            HttpResponse response = Request.Post(url).bodyForm(nameValuePairs)
                    .setHeader("User-Agent", USER_AGNETS[0])  // 使用 固定的第一个 ua
                    .execute()
                    .returnResponse();
            headers = response.getAllHeaders();
            if (LOG.isDebugEnabled()) {
                for (Header header : headers) {
                    LOG.debug(header.getName() + " -> " + header.getValue());
                }
            }
        } catch (IOException e) {
            LOG.error(e.getMessage(), e);
        }
        return headers;
    }


    /**
     * post 请求 response 的 所有 header， 使用httpClient
     *
     * @param url
     * @param nameValuePairs
     * @return 无结果返回null
     */
    public static Map<String, String> postAllHeadersMap(String url, List<NameValuePair> nameValuePairs) {
        Map<String, String> headerMap = null;
        Header[] hrs = postAllHeaders(url, nameValuePairs);
        if (hrs == null) {
            return headerMap;
        }
        for (Header header : hrs) {
            headerMap.put(header.getName(), header.getValue());
        }
        return headerMap;
    }


    /**
     * post 请求 response 的 某个 指定header 值， 使用httpClient
     *
     * @param url
     * @param nameValuePairs
     * @param headerName     需返回header值的 名称
     * @return 无结果返回 null
     */
    public static String postHeaderValue(String url, List<NameValuePair> nameValuePairs, String headerName) {
        Preconditions.checkNotNull(headerName, "headerName 参数不可为 null");

        String headerValue = null;
        Header[] hrs = postAllHeaders(url, nameValuePairs);
        if (hrs == null) {
            return headerValue;
        }
        for (Header header : hrs) {
            if (headerName.equals(header.getName())) {
                headerValue = header.getValue();
                break;
            }
        }
        return headerValue;
    }


    public static void main(String[] args) throws IOException {
        // 模拟登陆 并获得 登陆后页面数据

        String url = "http://localhost/login/action";

        List<NameValuePair> params = new ArrayList<>();
        params.add(new BasicNameValuePair("username", "admin"));
        params.add(new BasicNameValuePair("password", "111111"));

        // 获得 cookie
        String cookieValue = postHeaderValue(url, params, "Set-Cookie");

        url = "http://localhost/main";
        Connection connection = Jsoup.connect(url).header("Cookie", cookieValue).header("User-Agent", randomUserAgent()).timeout(DEFAULT_TIMEOUT);
        Document document = postDocument(connection);
        System.out.println(document.html());
    }
}
