package com.hxkj.data.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * base model generated code
 * @author
 * @date 2018-09-06 11:26:11
 */
@SuppressWarnings("serial")
public abstract class BaseDataRegion<M extends BaseDataRegion<M>> extends Model<M> implements IBean {

   // id  区域代码
   public void setId(String id) {
       set("id", id);
   }
   public String getId() {
       return get("id");
   }


   // name  名字
   public void setName(String name) {
       set("name", name);
   }
   public String getName() {
       return get("name");
   }


   // parent_id  父区域代码
   public void setParentId(String parentId) {
       set("parent_id", parentId);
   }
   public String getParentId() {
       return get("parent_id");
   }


   // short_name  短名
   public void setShortName(String shortName) {
       set("short_name", shortName);
   }
   public String getShortName() {
       return get("short_name");
   }


   // level_type  节点级别
   public void setLevelType(String levelType) {
       set("level_type", levelType);
   }
   public String getLevelType() {
       return get("level_type");
   }


   // city_code  国内区号
   public void setCityCode(String cityCode) {
       set("city_code", cityCode);
   }
   public String getCityCode() {
       return get("city_code");
   }


   // zip_code  邮政编码
   public void setZipCode(String zipCode) {
       set("zip_code", zipCode);
   }
   public String getZipCode() {
       return get("zip_code");
   }


   // merger_name  完整的名称
   public void setMergerName(String mergerName) {
       set("merger_name", mergerName);
   }
   public String getMergerName() {
       return get("merger_name");
   }


   // lng  经度
   public void setLng(String lng) {
       set("lng", lng);
   }
   public String getLng() {
       return get("lng");
   }


   // lat  纬度
   public void setLat(String lat) {
       set("lat", lat);
   }
   public String getLat() {
       return get("lat");
   }


   // pinyn  名称拼音
   public void setPinyin(String pinyin) {
       set("pinyin", pinyin);
   }
   public String getPinyin() {
       return get("pinyin");
   }


   // is_disable  是否禁用 0未禁用，1 禁用
   public void setDisable(String isDisable) {
       set("is_disable", isDisable);
   }
   public String getDisable() {
       return get("is_disable");
   }

}
