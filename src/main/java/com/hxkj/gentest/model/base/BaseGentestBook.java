package com.hxkj.gentest.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * Generated code
 */
@SuppressWarnings("serial")
public abstract class BaseGentestBook<M extends BaseGentestBook<M>> extends Model<M> implements IBean {

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

    public String getInfo() {
        return get("info");
    }

    public void setInfo(String info) {
        set("info", info);
    }

    public String getAuthor() {
        return get("author");
    }

    public void setAuthor(String author) {
        set("author", author);
    }

    public java.util.Date getCreateTime() {
        return get("create_time");
    }

    public void setCreateTime(java.util.Date createTime) {
        set("create_time", createTime);
    }

}
