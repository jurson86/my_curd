package com.hxkj.common.util;

import com.hxkj.common.util.guava.BaseCache;
import com.hxkj.common.util.guava.CacheContainer;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * @author chuang
 * @date 2018/9/3
 */
public class Main {

    public static void main(String[] args) {
        BaseCache<String,AtomicInteger> retryCache = CacheContainer.getLoginRetryLimitCache();
        AtomicInteger x = new AtomicInteger();
        x.incrementAndGet();
        retryCache.put("zhangchuang",x);
        System.out.println(retryCache.getCache("zhangchuang"));
        x.incrementAndGet();

        x.incrementAndGet();
        x.incrementAndGet();
        x.incrementAndGet();
        System.out.println(retryCache.getCache("zhangchuang"));
    }
}
