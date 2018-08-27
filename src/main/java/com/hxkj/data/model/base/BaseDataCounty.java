package com.hxkj.data.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * base model generated code
 *
 * @author
 * @date 2018-06-24 20:42:55
 */
@SuppressWarnings("serial")
public abstract class BaseDataCounty<M extends BaseDataCounty<M>> extends Model<M> implements IBean {

    public Integer getOid() {
        return get("oid");
    }

    // oid
    public void setOid(Integer oid) {
        set("oid", oid);
    }

    public String getOname() {
        return get("oname");
    }

    // oname
    public void setOname(String oname) {
        set("oname", oname);
    }

    public Integer getCid() {
        return get("cid");
    }

    // cid
    public void setCid(Integer cid) {
        set("cid", cid);
    }

}
