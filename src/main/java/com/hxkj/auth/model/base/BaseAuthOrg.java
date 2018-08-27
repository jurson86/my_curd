package com.hxkj.auth.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * base model generated code
 *
 * @author
 * @date 2018-06-20 20:38:50
 */
@SuppressWarnings("serial")
public abstract class BaseAuthOrg<M extends BaseAuthOrg<M>> extends Model<M> implements IBean {

    public Long getId() {
        return get("id");
    }

    // id
    public void setId(Long id) {
        set("id", id);
    }

    public String getName() {
        return get("name");
    }

    // name
    public void setName(String name) {
        set("name", name);
    }

    public String getAddress() {
        return get("address");
    }

    // address  部门地址
    public void setAddress(String address) {
        set("address", address);
    }

    public String getMark() {
        return get("mark");
    }

    // mark
    public void setMark(String mark) {
        set("mark", mark);
    }

    public Integer getSort() {
        return get("sort");
    }

    // sort
    public void setSort(Integer sort) {
        set("sort", sort);
    }

    public java.util.Date getCreateTime() {
        return get("create_time");
    }

    // create_time  创建时间
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

    public Long getPid() {
        return get("pid");
    }

    // pid  父组织机构id
    public void setPid(Long pid) {
        set("pid", pid);
    }

}
