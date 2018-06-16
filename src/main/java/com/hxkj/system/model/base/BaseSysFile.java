package com.hxkj.system.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * base model generated code
 *
 * @author
 * @date 2018-06-16 22:47:56
 */
@SuppressWarnings("serial")
public abstract class BaseSysFile<M extends BaseSysFile<M>> extends Model<M> implements IBean {

    // id
    public void setId(java.math.BigInteger id) {
        set("id", id);
    }

    public java.math.BigInteger getId() {
        return get("id");
    }


    // user_id
    public void setUserId(String userId) {
        set("user_id", userId);
    }

    public String getUserId() {
        return get("user_id");
    }


    // save_id  某个表主键
    public void setSaveId(String saveId) {
        set("save_id", saveId);
    }

    public String getSaveId() {
        return get("save_id");
    }


    // path  文件路径
    public void setPath(String path) {
        set("path", path);
    }

    public String getPath() {
        return get("path");
    }


    // original_filename  文件原名
    public void setOriginalFilename(String originalFilename) {
        set("original_filename", originalFilename);
    }

    public String getOriginalFilename() {
        return get("original_filename");
    }


    // mime  mime类型
    public void setMime(String mime) {
        set("mime", mime);
    }

    public String getMime() {
        return get("mime");
    }


    // type  文件类型（文件后缀）
    public void setType(String type) {
        set("type", type);
    }

    public String getType() {
        return get("type");
    }


    // size  文件大小(B)
    public void setSize(java.math.BigInteger size) {
        set("size", size);
    }

    public java.math.BigInteger getSize() {
        return get("size");
    }


    // remark  文件备注
    public void setRemark(String remark) {
        set("remark", remark);
    }

    public String getRemark() {
        return get("remark");
    }


    // create_time  上传时间
    public void setCreateTime(java.util.Date createTime) {
        set("create_time", createTime);
    }

    public java.util.Date getCreateTime() {
        return get("create_time");
    }

}
