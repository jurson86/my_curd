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
public abstract class BaseAuthUser<M extends BaseAuthUser<M>> extends Model<M> implements IBean {

    public Long getId() {
        return get("id");
    }

    // id
    public void setId(Long id) {
        set("id", id);
    }

    public String getUsername() {
        return get("username");
    }

    // username  用户名
    public void setUsername(String username) {
        set("username", username);
    }

    public String getPassword() {
        return get("password");
    }

    // password  密码
    public void setPassword(String password) {
        set("password", password);
    }

    public String getName() {
        return get("name");
    }

    // name  真实姓名
    public void setName(String name) {
        set("name", name);
    }

    public Integer getOrgId() {
        return get("org_id");
    }

    // org_id  部门id
    public void setOrgId(Integer orgId) {
        set("org_id", orgId);
    }

    public String getEmail() {
        return get("email");
    }

    // email  邮箱地址
    public void setEmail(String email) {
        set("email", email);
    }

    public String getPhone() {
        return get("phone");
    }

    // phone  手机号
    public void setPhone(String phone) {
        set("phone", phone);
    }

    public java.util.Date getLastLoginTime() {
        return get("last_login_time");
    }

    // last_login_time  最后一次登录时间
    public void setLastLoginTime(java.util.Date lastLoginTime) {
        set("last_login_time", lastLoginTime);
    }

    public String getDisabled() {
        return get("disabled");
    }

    // disabled  是否禁用0 未禁用 1禁用
    public void setDisabled(String disabled) {
        set("disabled", disabled);
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

}
