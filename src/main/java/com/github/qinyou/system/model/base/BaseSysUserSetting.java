package com.github.qinyou.system.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * Generated baseModel
 * DB table: sys_user_setting  用户设置项
 *
 * @author zhangchuang
 * @since 2019-02-21 13:10:49
 */
@SuppressWarnings({"serial", "unchecked"})
public abstract class BaseSysUserSetting<M extends BaseSysUserSetting<M>> extends Model<M> implements IBean {


    // 主键id
    public String getId() {
        return getStr("id");
    }

    public M setId(String id) {
        set("id", id);
        return (M) this;
    }


    // 用户名
    public String getSysUser() {
        return getStr("sysUser");
    }

    public M setSysUser(String sysUser) {
        set("sysUser", sysUser);
        return (M) this;
    }


    // 主题
    public String getTheme() {
        return getStr("theme");
    }

    public M setTheme(String theme) {
        set("theme", theme);
        return (M) this;
    }


    // 主题颜色值
    public String getThemeColor() {
        return getStr("themeColor");
    }

    public M setThemeColor(String themeColor) {
        set("themeColor", themeColor);
        return (M) this;
    }
}
