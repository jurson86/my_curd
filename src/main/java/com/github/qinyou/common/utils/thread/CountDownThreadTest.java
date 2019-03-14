package com.github.qinyou.common.utils.thread;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;

/**
 * CountDownLatch 用例，主线程等待所有子线程运行完毕后继续执行
 * 通过线程池运行子线程，子线程运行完毕后，线程池不关闭，web 环境下有实用价值
 * @author zhangchuang
 */
public class CountDownThreadTest {
    public static void main(String[] args) throws InterruptedException {
        CountDownLatch latch=new CountDownLatch(3);

        List<BaseServiceThread> services = new ArrayList<>();
        services.add(new NetworkHealthChecker(latch));
        services.add(new DatabaseHealthChecker(latch));
        services.add(new CacheHealthChecker(latch));

        services.forEach(service -> {
           ExecutorServiceUtils.pool.execute(service);
        });

        latch.await();

        for(final BaseServiceThread v : services)
        {
            if( ! v.isServiceUp())
            {
                System.out.println("not all service over");
                return;
            }
        }
        System.out.println("all service over");
    }
}
