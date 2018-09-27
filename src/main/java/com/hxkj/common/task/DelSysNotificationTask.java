package com.hxkj.common.task;

import com.hxkj.common.util.DateTimeUtils;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;
import org.apache.log4j.Logger;

import java.util.Date;

/**
 * 定时任务
 * 删除系统通知
 */
public class DelSysNotificationTask implements Runnable {
    private final static Logger LOG = Logger.getLogger(DelSysNotificationTask.class);

    @Override
    public void run() {
        Date today = new Date();
        if (LOG.isInfoEnabled()) {
            LOG.info(" 删除系统通知定时任务执行：" + DateTimeUtils.format(today, DateTimeUtils.pattern_ymd_hms));
        }
        // 删除必死期 的 主从表记录
        String selectSql = "select GROUP_CONCAT(id) as ids from sys_notification where dead_time <= ? ";
        String deleteSql;
        Record record = Db.findFirst(selectSql, today);
        if (record != null && StrKit.notBlank(record.getStr("ids"))) {
            String ids = record.getStr("ids");
            ids = ids.replaceAll(",", "','");
            // 删 主表
            deleteSql = " delete from  sys_notification where id in ('+ids+')";
            Db.update(deleteSql);
            // 删 从表
            deleteSql = " delete from  sys_notification_detail where main_id in ('+ids+')";
            Db.update(deleteSql);
        }

        // 删除 过期 未读的从表记录
        selectSql = " select GROUP_CONCAT(id) as ids from sys_notification where expiry_time <= ? ";
        record = Db.findFirst(selectSql, today);
        if (record != null && StrKit.notBlank(record.getStr("ids"))) {
            String ids = record.getStr("ids");
            ids = ids.replaceAll(",", "','");
            deleteSql = " delete from  sys_notification_detail where main_id in ('+ids+') and is_read='0' ";
            Db.update(deleteSql);
        }
    }
}
