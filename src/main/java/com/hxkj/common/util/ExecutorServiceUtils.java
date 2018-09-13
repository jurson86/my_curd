package com.hxkj.common.util;

import com.google.common.util.concurrent.ThreadFactoryBuilder;

import java.util.concurrent.*;

/**
 * @author chuang
 * @date 2018/9/10
 */
public class ExecutorServiceUtils {

    // 固定大小线程池
    public  static ExecutorService pool =new ThreadPoolExecutor(2, 2,
            0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue<Runnable>(),
            new ThreadFactoryBuilder().setNameFormat("my_curd-%d").setDaemon(true).build());
    static {
        System.err.println("init -----------------------------init ");
    }
}
