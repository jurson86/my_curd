package com.hxkj.cms.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * base model generated code
 * @author
 * @date 2018-06-25 19:59:09
 */
@SuppressWarnings("serial")
public abstract class BaseCmsArticleMd<M extends BaseCmsArticleMd<M>> extends Model<M> implements IBean {

   // id  
   public void setId(String id) {
       set("id", id);
   }
   public String getId() {
       return get("id");
   }


   // content  
   public void setContent(String content) {
       set("content", content);
   }
   public String getContent() {
       return get("content");
   }


   // cms_article_id  
   public void setCmsArticleId(String cmsArticleId) {
       set("cms_article_id", cmsArticleId);
   }
   public String getCmsArticleId() {
       return get("cms_article_id");
   }

}
