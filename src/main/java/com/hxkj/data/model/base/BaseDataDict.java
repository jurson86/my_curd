package com.hxkj.data.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

@SuppressWarnings("serial")
public abstract class BaseDataDict<M extends BaseDataDict<M>> extends Model<M> implements IBean {

    public Long getId() {
        return get("id");
    }

    public void setId(Long id) {
        set("id", id);
    }

    public String getDictType() {
        return get("dict_type");
    }

    public void setDictType(String dictType) {
        set("dict_type", dictType);
    }

    public String getDictKey() {
        return get("dict_key");
    }

    public void setDictKey(String dictKey) {
        set("dict_key", dictKey);
    }

    public String getDictValue() {
        return get("dict_value");
    }

    public void setDictValue(String dictValue) {
        set("dict_value", dictValue);
    }

    public java.util.Date getCreateTime() {
        return get("create_time");
    }

    public void setCreateTime(java.util.Date createTime) {
        set("create_time", createTime);
    }

    public java.util.Date getLastEditTime() {
        return get("last_edit_time");
    }

    // last_edit_time  最后一次修改时间
    public void setLastEditTime(java.util.Date lastEditTime) {
        set("last_edit_time", lastEditTime);
    }

}
