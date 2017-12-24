package com.hxkj.system.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * Generated code
 */
@SuppressWarnings("serial")
public abstract class BaseSysNews<M extends BaseSysNews<M>> extends Model<M> implements IBean {

    public String getId() {
        return get("id");
    }

    public void setId(String id) {
        set("id", id);
    }

    public String getTitle() {
        return get("title");
    }

    public void setTitle(String title) {
        set("title", title);
    }

    public String getTags() {
        return get("tags");
    }

    public void setTags(String tags) {
        set("tags", tags);
    }

    public String getContent() {
        return get("content");
    }

    public void setContent(String content) {
        set("content", content);
    }

    public String getUserId() {
        return get("user_id");
    }

    public void setUserId(String userId) {
        set("user_id", userId);
    }

    public java.util.Date getCreateTime() {
        return get("create_time");
    }

    public void setCreateTime(java.util.Date createTime) {
        set("create_time", createTime);
    }

}
