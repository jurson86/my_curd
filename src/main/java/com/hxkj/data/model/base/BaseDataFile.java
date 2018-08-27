package com.hxkj.data.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * base model generated code
 *
 * @author
 * @date 2018-06-16 22:47:56
 */
@SuppressWarnings("serial")
public abstract class BaseDataFile<M extends BaseDataFile<M>> extends Model<M> implements IBean {

    public String getId() {
        return get("id");
    }

    // id
    public void setId(String id) {
        set("id", id);
    }

    public Long getUserId() {
        return get("user_id");
    }

    // user_id
    public void setUserId(Long userId) {
        set("user_id", userId);
    }

    public String getSaveId() {
        return get("save_id");
    }

    // save_id  某个表主键
    public void setSaveId(String saveId) {
        set("save_id", saveId);
    }

    public String getPath() {
        return get("path");
    }

    // path  文件路径
    public void setPath(String path) {
        set("path", path);
    }

    public String getOriginalFilename() {
        return get("original_filename");
    }

    // original_filename  文件原名
    public void setOriginalFilename(String originalFilename) {
        set("original_filename", originalFilename);
    }

    public String getMime() {
        return get("mime");
    }

    // mime  mime类型
    public void setMime(String mime) {
        set("mime", mime);
    }

    public String getType() {
        return get("type");
    }

    // type  文件类型（文件后缀）
    public void setType(String type) {
        set("type", type);
    }

    public java.math.BigInteger getSize() {
        return get("size");
    }

    // size  文件大小(B)
    public void setSize(java.math.BigInteger size) {
        set("size", size);
    }

    public String getRemark() {
        return get("remark");
    }

    // remark  文件备注
    public void setRemark(String remark) {
        set("remark", remark);
    }

    public java.util.Date getCreateTime() {
        return get("create_time");
    }

    // create_time  修后修改时间
    public void setCreateTime(java.util.Date createTime) {
        set("create_time", createTime);
    }

}
