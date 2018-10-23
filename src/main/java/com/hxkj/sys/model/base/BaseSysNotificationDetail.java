package com.hxkj.sys.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * base model generated code
 *
 * @author
 * @date 2018-09-17 19:18:07
 */
@SuppressWarnings("serial")
public abstract class BaseSysNotificationDetail<M extends BaseSysNotificationDetail<M>> extends Model<M> implements IBean {

    public String getId() {
        return get("id");
    }

    // id
    public void setId(String id) {
        set("id", id);
    }

    public String getMainId() {
        return get("main_id");
    }

    // main_id  主表id
    public void setMainId(String mainId) {
        set("main_id", mainId);
    }

    public Long getSender() {
        return get("sender");
    }

    // sender  发送人
    public void setSender(Long sender) {
        set("sender", sender);
    }

    public Long getReceiver() {
        return get("receiver");
    }

    // receiver  接收人
    public void setReceiver(Long receiver) {
        set("receiver", receiver);
    }

    public String getIsRead() {
        return get("is_read");
    }

    // is_read  是否已读，0未读 1已读
    public void setIsRead(String isRead) {
        set("is_read", isRead);
    }

    public java.util.Date getReadTime() {
        return get("read_time");
    }

    // read_time  已读时间
    public void setReadTime(java.util.Date readTime) {
        set("read_time", readTime);
    }

}
