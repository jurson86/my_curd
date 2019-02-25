package com.github.qinyou.system.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

import java.math.BigDecimal;
import java.util.Date;

/**
 * Generated baseModel
 * DB table: sys_file  用户上传的文件
 *
 * @author zhangchuang
 * @since 2019-02-21 13:10:49
 */
@SuppressWarnings({"serial", "unchecked"})
public abstract class BaseSysFile<M extends BaseSysFile<M>> extends Model<M> implements IBean {


    // 主键id
    public String getId() {
        return getStr("id");
    }

    public M setId(String id) {
        set("id", id);
        return (M) this;
    }


    // 文件存储地址
    public String getPath() {
        return getStr("path");
    }

    public M setPath(String path) {
        set("path", path);
        return (M) this;
    }


    // 文件原名
    public String getOriName() {
        return getStr("oriName");
    }

    public M setOriName(String oriName) {
        set("oriName", oriName);
        return (M) this;
    }


    // MIME类型
    public String getMime() {
        return getStr("mime");
    }

    public M setMime(String mime) {
        set("mime", mime);
        return (M) this;
    }


    // 文件类型（文件后缀）
    public String getFileType() {
        return getStr("fileType");
    }

    public M setFileType(String fileType) {
        set("fileType", fileType);
        return (M) this;
    }


    // 文件大小（单位B字节)
    public BigDecimal getFileLength() {
        return get("fileLength");
    }

    public M setFileLength(BigDecimal fileLength) {
        set("fileLength", fileLength);
        return (M) this;
    }


    // 备注
    public String getRemark() {
        return getStr("remark");
    }

    public M setRemark(String remark) {
        set("remark", remark);
        return (M) this;
    }


    // 预留其它表主键
    public String getSaveId() {
        return getStr("saveId");
    }

    public M setSaveId(String saveId) {
        set("saveId", saveId);
        return (M) this;
    }


    // 创建人
    public String getCreater() {
        return getStr("creater");
    }

    public M setCreater(String creater) {
        set("creater", creater);
        return (M) this;
    }


    // 创建时间
    public Date getCreateTime() {
        return get("createTime");
    }

    public M setCreateTime(Date createTime) {
        set("createTime", createTime);
        return (M) this;
    }


    // 修改人
    public String getUpdater() {
        return getStr("updater");
    }

    public M setUpdater(String updater) {
        set("updater", updater);
        return (M) this;
    }


    // 最后修改时间
    public Date getUpdateTime() {
        return get("updateTime");
    }

    public M setUpdateTime(Date updateTime) {
        set("updateTime", updateTime);
        return (M) this;
    }
}
