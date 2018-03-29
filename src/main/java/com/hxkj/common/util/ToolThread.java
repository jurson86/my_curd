package com.hxkj.common.util;

import com.google.common.util.concurrent.ThreadFactoryBuilder;
import org.apache.log4j.Logger;

import java.util.concurrent.*;

public abstract class ToolThread {

    private final static Logger log = Logger.getLogger(ToolThread.class);

    private static ThreadFactory threadFactory = new ThreadFactoryBuilder()
            .setNameFormat("Thread-Pool-%d")  //运行的每个任务线程名格式化
            .setDaemon(true)                  //运行的每个任务线程设置为守护线程
            .build();

    /**
     * 任务处理线程池
     * 固定大小线程池
     */
    private static final ExecutorService pool = new ThreadPoolExecutor(10, 10,
            0L, TimeUnit.MILLISECONDS,
            new LinkedBlockingQueue<Runnable>(), threadFactory);


    /**
     * 运行新线程 无返回值
     *
     * @param command
     */
    public static void execute(Runnable command) {
        pool.execute(command);
    }


    /**
     * 运行新线程 返回布尔值
     *
     * @param command
     * @return
     */
    public static Boolean submit(Callable<Boolean> command) {
        Boolean flag = false;
        Future<Boolean> result = pool.submit(command);
        try {
            flag = result.get();
        } catch (InterruptedException e) {
            log.error("异常：", e);
        } catch (ExecutionException e) {
            log.error("异常：", e);
        }
        return flag;
    }

}
