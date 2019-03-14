package com.github.qinyou.common.utils.thread;

import java.util.concurrent.CountDownLatch;

public class DatabaseHealthChecker extends BaseServiceThread {

    public DatabaseHealthChecker( CountDownLatch latch) {
        super("Database Service", latch);
    }

    @Override
    public void service() {
        System.out.println("Checking " + this.getServiceName());
        try{
            Thread.sleep(8000);
        }
        catch (InterruptedException e)
        {
            e.printStackTrace();
        }
        System.out.println(this.getServiceName() + " is UP");
    }
}