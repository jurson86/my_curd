package com.hxkj.data.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * base model generated code
 * @author
 * @date 2018-06-24 20:42:55
 */
@SuppressWarnings("serial")
public abstract class BaseDataProvince<M extends BaseDataProvince<M>> extends Model<M> implements IBean {

   // pid  
   public void setPid(Integer pid) {
       set("pid", pid);
   }
   public Integer getPid() {
       return get("pid");
   }


   // pname  
   public void setPname(String pname) {
       set("pname", pname);
   }
   public String getPname() {
       return get("pname");
   }

}
