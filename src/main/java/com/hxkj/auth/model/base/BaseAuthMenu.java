package com.hxkj.auth.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * base model generated code
 * @author
 * @date 2018-06-20 20:38:50
 */
@SuppressWarnings("serial")
public abstract class BaseAuthMenu<M extends BaseAuthMenu<M>> extends Model<M> implements IBean {

   // id  
   public void setId(Long id) {
       set("id", id);
   }
   public Long getId() {
       return get("id");
   }


   // name  菜单名称
   public void setName(String name) {
       set("name", name);
   }
   public String getName() {
       return get("name");
   }


   // url  菜单地址
   public void setUrl(String url) {
       set("url", url);
   }
   public String getUrl() {
       return get("url");
   }


   // icon  图片图标
   public void setIcon(String icon) {
       set("icon", icon);
   }
   public String getIcon() {
       return get("icon");
   }


   // iconfont  字体图标
   public void setIconfont(String iconfont) {
       set("iconfont", iconfont);
   }
   public String getIconfont() {
       return get("iconfont");
   }


   // sort  排序号
   public void setSort(Integer sort) {
       set("sort", sort);
   }
   public Integer getSort() {
       return get("sort");
   }


   // pid  父id
   public void setPid(Long pid) {
       set("pid", pid);
   }
   public Long getPid() {
       return get("pid");
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
}
