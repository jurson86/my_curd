package com.hxkj.auth.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * base model generated code
 * @author
 * @date 2018-06-20 20:38:50
 */
@SuppressWarnings("serial")
public abstract class BaseAuthOrg<M extends BaseAuthOrg<M>> extends Model<M> implements IBean {

   // id  
   public void setId(Long id) {
       set("id", id);
   }
   public Long getId() {
       return get("id");
   }


   // name  
   public void setName(String name) {
       set("name", name);
   }
   public String getName() {
       return get("name");
   }


   // address  部门地址
   public void setAddress(String address) {
       set("address", address);
   }
   public String getAddress() {
       return get("address");
   }


   // mark  
   public void setMark(String mark) {
       set("mark", mark);
   }
   public String getMark() {
       return get("mark");
   }


   // sort  
   public void setSort(Integer sort) {
       set("sort", sort);
   }
   public Integer getSort() {
       return get("sort");
   }


   // create_time  创建时间
   public void setCreateTime(java.util.Date createTime) {
       set("create_time", createTime);
   }
   public java.util.Date getCreateTime() {
       return get("create_time");
   }


   // last_edit_time  最后一次修改时间
   public void setLastEditTime(java.util.Date lastEditTime) {
       set("last_edit_time", lastEditTime);
   }
   public java.util.Date getLastEditTime() {
       return get("last_edit_time");
   }


   // pid  父组织机构id
   public void setPid(Long pid) {
       set("pid", pid);
   }
   public Long getPid() {
       return get("pid");
   }

}
