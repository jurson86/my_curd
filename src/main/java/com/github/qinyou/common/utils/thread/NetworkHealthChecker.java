package com.github.qinyou.common.utils.thread;

import java.util.concurrent.CountDownLatch;

public class NetworkHealthChecker extends BaseServiceThread {

    public NetworkHealthChecker( CountDownLatch latch) {
        super("Network Service", latch);
    }

    @Override
    public void service() {
        System.out.println("Checking " + this.getServiceName());
        try
        {
            Thread.sleep(7000);
        }
        catch (InterruptedException e)
        {
            e.printStackTrace();
        }
        System.out.println(this.getServiceName() + " is UP");
    }
}
