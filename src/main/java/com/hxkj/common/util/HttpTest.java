package com.hxkj.common.util;

import org.apache.http.client.fluent.Content;
import org.apache.http.client.fluent.Request;

import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;

/**
 * Created by Administrator on 2017-12-25.
 */
public class HttpTest {

    public static void main(String[] args) throws IOException {

        Content content =  Request.Get("https://www.baidu.com").execute().returnContent();

        System.out.println(content.getType());
        System.out.println(content.asString(Charset.forName("utf-8")));
    }
}
