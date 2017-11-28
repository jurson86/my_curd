package com.hxkj.common.task;

import com.hxkj.common.util.ToolDateTime;
import com.jfinal.plugin.cron4j.ITask;

import java.util.Date;

/**
 *  长时间的任务
 */
public class LongTimeTask  implements ITask{

    @Override
    public void stop() {
        // 此处为 运行结束回调
        System.out.println("结束运行，啦啦啦啦啦啦阿啦啦啦啦啦啦");
    }

    @Override
    public void run() {
        System.out.println("开始运行： "+ ToolDateTime.format(new Date(),"yyyy-MM-dd HH:mm:ss.S"));
        /*for(int i=0;i<100000;i++){
            for(int j=0;j<10000;j++){
                System.out.println("i:"+i+" j:"+j);
            }
        }*/
        System.out.println("结束运行： "+ ToolDateTime.format(new Date(),"yyyy-MM-dd HH:mm:ss.S"));
    }
}
