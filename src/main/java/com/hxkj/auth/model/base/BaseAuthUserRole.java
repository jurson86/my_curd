package com.hxkj.auth.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * base model generated code
 * @author
 * @date 2018-06-20 20:38:51
 */
@SuppressWarnings("serial")
public abstract class BaseAuthUserRole<M extends BaseAuthUserRole<M>> extends Model<M> implements IBean {

   // user_id  
   public void setUserId(Long userId) {
       set("user_id", userId);
   }
   public Long getUserId() {
       return get("user_id");
   }


   // role_id  
   public void setRoleId(Long roleId) {
       set("role_id", roleId);
   }
   public Long getRoleId() {
       return get("role_id");
   }

   // 操作人
   public void setUser(String user){
       set("user",user);
   }
   public String getUser(){
      return get("user");
   }

}
