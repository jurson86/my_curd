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
public abstract class BaseAuthRole<M extends BaseAuthRole<M>> extends Model<M> implements IBean {

    public Long getId() {
        return get("id");
    }

    // id
    public void setId(Long id) {
        set("id", id);
    }

    public String getRoleName() {
        return get("role_name");
    }

    // role_name  角色名称
    public void setRoleName(String roleName) {
        set("role_name", roleName);
    }

    public String getRoleCode() {
        return get("role_code");
    }

    // role_code 角色编码
    public void setRoleCode(String roleCode) {
        set("role_code", roleCode);
    }

    public String getRoleDesc() {
        return get("role_desc");
    }

    // role_desc  角色描述
    public void setRoleDesc(String roleDesc) {
        set("role_desc", roleDesc);
    }

    public Integer getSort() {
        return get("sort");
    }

    // sort  排序号
    public void setSort(Integer sort) {
        set("sort", sort);
    }

    public java.util.Date getCreateTime() {
        return get("create_time");
    }

    // create_time  创建时间或者更新时间
    public void setCreateTime(java.util.Date createTime) {
        set("create_time", createTime);
    }

    public java.util.Date getLastEditTime() {
        return get("last_edit_time");
    }

    // last_edit_time
    public void setLastEditTime(java.util.Date lastEditTime) {
        set("last_edit_time", lastEditTime);
    }

}
