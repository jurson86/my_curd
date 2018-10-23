package com.hxkj.sys.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * base model generated code
 *
 * @author
 * @date 2018-09-18 18:29:09
 */
@SuppressWarnings("serial")
public abstract class BaseSysNotificationType<M extends BaseSysNotificationType<M>> extends Model<M> implements IBean {

    public java.lang.String getId() {
        return get("id");
    }

    // id
    public void setId(java.lang.String id) {
        set("id", id);
    }

    public java.lang.String getCategory() {
        return get("category");
    }

    // category 分类
    public void setCategory(java.lang.String category) {
        set("category", category);
    }

    public java.lang.String getTxt() {
        return get("txt");
    }

    // txt  名字
    public void setTxt(java.lang.String txt) {
        set("txt", txt);
    }

    public java.lang.String getLogo() {
        return get("logo");
    }

    // 图片图标地址
    public void setLogo(java.lang.String logo) {
        set("logo", logo);
    }

    public java.lang.String getCode() {
        return get("code");
    }

    // code  编码
    public void setCode(java.lang.String code) {
        set("code", code);
    }

    public java.lang.String getTemplate() {
        return get("template");
    }

    // tempalte 通知模板 (基于freemarker语法, 使用 FTL 替换 $ )
    public void setTemplate(java.lang.String template) {
        set("template", template);
    }

    public java.lang.String getRemark() {
        return get("remark");
    }

    // remark  备注
    public void setRemark(java.lang.String remark) {
        set("remark", remark);
    }

    public java.lang.Integer getUntilExpiryDay() {
        return get("until_expiry_day");
    }

    // until_expiry_day  多少天后过期
    public void setUntilExpiryDay(java.lang.Integer untilExpiryDay) {
        set("until_expiry_day", untilExpiryDay);
    }

    public java.lang.Integer getUntilDeadDay() {
        return get("until_dead_day");
    }

    // until_dead_day  多少天后必死
    public void setUntilDeadDay(java.lang.Integer untilDeadDay) {
        set("until_dead_day", untilDeadDay);
    }

}
