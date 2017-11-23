package test;

import it.sauronsoftware.cron4j.Scheduler;
import it.sauronsoftware.cron4j.Task;
import it.sauronsoftware.cron4j.TaskExecutionContext;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by Administrator on 2017-11-23.
 */
public class Cron4jTest {

    public static void main(String[] args) {
        Scheduler scheduler = new Scheduler();
        String sid = scheduler.schedule("1-36 * * * *",new MyTask());
        scheduler.start();

      /*  try {
            Thread.sleep(1000L * 60L * 10L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        scheduler.deschedule(sid);*/
    }

}

class MyTask implements  Runnable{
    public SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S");


    public void run() {
        System.out.println("现在时间："+dateFormat.format(new Date()));
    }
}