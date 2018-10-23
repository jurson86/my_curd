package com.hxkj.sys.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * base model generated code
 *
 * @author
 * @date 2018-09-17 19:18:06
 */
@SuppressWarnings("serial")
public abstract class BaseSysNotification<M extends BaseSysNotification<M>> extends Model<M> implements IBean {

    public String getId() {
        return get("id");
    }

    // id
    public void setId(String id) {
        set("id", id);
    }

    public String getTypeCode() {
        return get("type_code");
    }

    // type_code  通知类型编码
    public void setTypeCode(String typeCode) {
        set("type_code", typeCode);
    }

    public String getTitle() {
        return get("title");
    }

    // title  消息标题
    public void setTitle(String title) {
        set("title", title);
    }

    public String getContent() {
        return get("content");
    }

    // content  消息内容
    public void setContent(String content) {
        set("content", content);
    }

    public java.util.Date getCreateTime() {
        return get("create_time");
    }

    // create_time  创建时间
    public void setCreateTime(java.util.Date createTime) {
        set("create_time", createTime);
    }

    public java.util.Date getExpiryTime() {
        return get("expiry_time");
    }

    // expiry_time  过期时间
    public void setExpiryTime(java.util.Date expiryTime) {
        set("expiry_time", expiryTime);
    }

    public java.util.Date getDeadTime() {
        return get("dead_time");
    }

    // dead_time  必死时间
    public void setDeadTime(java.util.Date deadTime) {
        set("dead_time", deadTime);
    }

}
