package com.hxkj.auth.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * base model generated code
 * @author
 * @date 2018-06-20 20:38:50
 */
@SuppressWarnings("serial")
public abstract class BaseAuthRole<M extends BaseAuthRole<M>> extends Model<M> implements IBean {

   // id  
   public void setId(Long id) {
       set("id", id);
   }
   public Long getId() {
       return get("id");
   }


   // role_name  角色名称
   public void setRoleName(String roleName) {
       set("role_name", roleName);
   }
   public String getRoleName() {
       return get("role_name");
   }


   // role_desc  角色描述
   public void setRoleDesc(String roleDesc) {
       set("role_desc", roleDesc);
   }
   public String getRoleDesc() {
       return get("role_desc");
   }


   // sort  排序号
   public void setSort(Integer sort) {
       set("sort", sort);
   }
   public Integer getSort() {
       return get("sort");
   }


   // create_time  创建时间或者更新时间
   public void setCreateTime(java.util.Date createTime) {
       set("create_time", createTime);
   }
   public java.util.Date getCreateTime() {
       return get("create_time");
   }


   // last_edit_time  
   public void setLastEditTime(java.util.Date lastEditTime) {
       set("last_edit_time", lastEditTime);
   }
   public java.util.Date getLastEditTime() {
       return get("last_edit_time");
   }

}
