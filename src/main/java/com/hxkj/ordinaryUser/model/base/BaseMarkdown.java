package com.hxkj.ordinaryUser.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * base model generated code
 * @author
 * @date 2018-06-18 18:25:03
 */
@SuppressWarnings("serial")
public abstract class BaseMarkdown<M extends BaseMarkdown<M>> extends Model<M> implements IBean {

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


   // content  
   public void setContent(String content) {
       set("content", content);
   }
   public String getContent() {
       return get("content");
   }


   // user_id  
   public void setUserId(String userId) {
       set("user_id", userId);
   }
   public String getUserId() {
       return get("user_id");
   }


   // open  是否公开 1公开,0不公开
   public void setOpen(String open) {
       set("open", open);
   }
   public String getOpen() {
       return get("open");
   }


   // create_time  创建或更新时间
   public void setCreateTime(java.util.Date createTime) {
       set("create_time", createTime);
   }
   public java.util.Date getCreateTime() {
       return get("create_time");
   }

}
