package com.hxkj.gentest.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * Generated code
 */
@SuppressWarnings("serial")
public abstract class BaseGentestMulpktable<M extends BaseGentestMulpktable<M>> extends Model<M> implements IBean {

    public String getId() {
        return get("id");
    }

    public void setId(String id) {
        set("id", id);
    }

    public String getId2() {
        return get("id2");
    }

    public void setId2(String id2) {
        set("id2", id2);
    }

    public String getId3() {
        return get("id3");
    }

    public void setId3(String id3) {
        set("id3", id3);
    }

    public String getV() {
        return get("v");
    }

    public void setV(String v) {
        set("v", v);
    }

}
