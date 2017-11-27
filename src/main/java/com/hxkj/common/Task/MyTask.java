package com.hxkj.common.Task;

import com.hxkj.common.constant.TaskConstant;
import com.hxkj.system.model.SysTask;
import com.hxkj.system.model.SysTaskLog;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.cron4j.ITask;
import jodd.util.StringUtil;

import java.util.Date;

/**
 * cron4j 通过 Runnable 实现类
 */
public class MyTask implements ITask {
    private int id;                //taskBaseId
    private int taskTargetType;    //任务类型
    private String taskTargetValue;    //任务值

    public MyTask(int taskTargetType, String taskTargetValue) {
        this.taskTargetType = taskTargetType;
        this.taskTargetValue = taskTargetValue;
    }

    public MyTask(int id, int taskTargetType, String taskTargetValue) {
        this.id = id;
        this.taskTargetType = taskTargetType;
        this.taskTargetValue = taskTargetValue;
    }

    public void run() {
        SysTaskLog log = new SysTaskLog();
        Date startDate = new Date();
        log.setTaskId(id);
        log.setStartTime(startDate);
        log.save();

        String result = "成功";
        try {
            for (final String value : taskTargetValue.trim().split(";")) {
                if (StringUtil.isEmpty(value)) {
                    continue;
                }

                if (taskTargetType == TaskConstant.TASK_TARGET_TYPE1) {
                    // String content = UrlUtil.getAsText(value);
                    // TODO 执行结果判断

                } else if (taskTargetType == TaskConstant.TASK_TARGET_TYPE2) {
                    Db.find(value);
                    //权限太大慎用，可执行任意SQL
                    /*Db.execute(new ICallback() {
                        @Override
						public Object call(Connection conn) throws SQLException {
							conn.createStatement().execute(value);
							return true;
						}
					});*/

                } else if (taskTargetType == TaskConstant.TASK_TARGET_TYPE3) {
                    ITask task = (ITask) Class.forName(value).newInstance();
                    task.run();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            result = "失败";
            log.setRemark(e.getMessage());
        }

        Date endDate = new Date();
        int costTime = (int) (endDate.getTime() - startDate.getTime());
        log.setResult(result);
        log.setEndTime(endDate);
        log.setCostTime(costTime);
        log.update();

        //更新任务运行信息
        if (id > 0) {
            SysTask sysTask = SysTask.dao.findById(id);
            sysTask.setLastRunResult(result);
            sysTask.setLastRunTime(startDate);
            sysTask.setLastRunTimeCost(costTime);
            sysTask.update();
        }
        System.out.println(new Date() + "定时任务执行完成");
    }

    public void stop() {
        System.out.println("stop");
    }

}