package com.hxkj.data.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * base model generated code
 * @author
 * @date 2018-06-24 20:42:55
 */
@SuppressWarnings("serial")
public abstract class BaseDataCity<M extends BaseDataCity<M>> extends Model<M> implements IBean {

   // cid  
   public void setCid(Integer cid) {
       set("cid", cid);
   }
   public Integer getCid() {
       return get("cid");
   }


   // cname  
   public void setCname(String cname) {
       set("cname", cname);
   }
   public String getCname() {
       return get("cname");
   }


   // pid  
   public void setPid(Integer pid) {
       set("pid", pid);
   }
   public Integer getPid() {
       return get("pid");
   }

}
