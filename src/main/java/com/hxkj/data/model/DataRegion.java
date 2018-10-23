package com.hxkj.data.model;

import com.hxkj.data.model.base.BaseDataRegion;

import java.util.List;

/**
 * model table: data_region
 *
 * @author
 * @date 2018-09-06 11:26:11
 */
public class DataRegion extends BaseDataRegion<DataRegion> implements java.io.Serializable {

    public static final DataRegion dao = new DataRegion().dao();
    private static final long serialVersionUID = 1L;

    /**
     * 根据pid 查询
     *
     * @param pid
     * @return
     */
    public List<DataRegion> findByPid(String pid) {
        String sql = " select * from data_region where parent_id = ?  ";
        return find(sql, pid);
    }

    public List<DataRegion> findAll() {
        String sql = " select * from data_region ";
        return find(sql);
    }

}
