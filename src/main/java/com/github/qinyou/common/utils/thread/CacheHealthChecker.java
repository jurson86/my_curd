package com.github.qinyou.common.utils.thread;

import java.util.concurrent.CountDownLatch;

public class CacheHealthChecker extends BaseServiceThread {

    public CacheHealthChecker(CountDownLatch latch) {
        super("Cache Service", latch);
    }

    @Override
    public void service() {
        System.out.println("Checking " + this.getServiceName());
        try{
            Thread.sleep(2000);
        }
        catch (InterruptedException e)
        {
            e.printStackTrace();
        }
        System.out.println(this.getServiceName() + " is UP");
    }
}