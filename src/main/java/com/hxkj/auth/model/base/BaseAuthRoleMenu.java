package com.hxkj.auth.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * base model generated code
 * @author
 * @date 2018-06-20 20:38:50
 */
@SuppressWarnings("serial")
public abstract class BaseAuthRoleMenu<M extends BaseAuthRoleMenu<M>> extends Model<M> implements IBean {

   // role_id  
   public void setRoleId(Long roleId) {
       set("role_id", roleId);
   }
   public Long getRoleId() {
       return get("role_id");
   }


   // menu_id  
   public void setMenuId(Long menuId) {
       set("menu_id", menuId);
   }
   public Long getMenuId() {
       return get("menu_id");
   }

}
