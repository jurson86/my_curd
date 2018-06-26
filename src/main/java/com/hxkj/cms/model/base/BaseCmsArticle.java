package com.hxkj.cms.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * base model generated code
 * @author
 * @date 2018-06-25 19:59:08
 */
@SuppressWarnings("serial")
public abstract class BaseCmsArticle<M extends BaseCmsArticle<M>> extends Model<M> implements IBean {

   // id  
   public void setId(String id) {
       set("id", id);
   }
   public String getId() {
       return get("id");
   }


   // title  
   public void setTitle(String title) {
       set("title", title);
   }
   public String getTitle() {
       return get("title");
   }


   // tags  
   public void setTags(String tags) {
       set("tags", tags);
   }
   public String getTags() {
       return get("tags");
   }


   // type  类型，m 代表markdown , h代表 html
   public void setType(String type) {
       set("type", type);
   }
   public String getType() {
       return get("type");
   }




   // user_id  
   public void setUserId(Long userId) {
       set("user_id", userId);
   }
   public Long getUserId() {
       return get("user_id");
   }


   // create_time  创建或更新时间
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
