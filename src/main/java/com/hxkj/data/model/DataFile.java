package com.hxkj.data.model;

import com.hxkj.data.model.base.BaseDataFile;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

import java.util.List;

/**
 * sys_file 文件表 model
 *
 * @author zhangchuang
 */
public class DataFile extends BaseDataFile<DataFile> implements java.io.Serializable {

    public static final DataFile dao = new DataFile().dao();

    public String getName() {
        return get("name");
    }

    /**
     * 根据 多个id 查询列表
     *
     * @param ids
     * @return
     */
    public List<DataFile> findByIds(String ids) {
        String sql = "select * from data_file where id in (" + ids + ")";
        return find(sql);
    }

    /**
     * 分页查询 可排序
     *
     * @param pageNumber
     * @param pageSize
     * @param sort       排序字段
     * @param order      排序方式
     * @param where
     * @return
     */
    public Page<DataFile> page(int pageNumber, int pageSize, String sort, String order, String where) {
        String sqlSelect = " SELECT sf.*,su.name as name ";
        String sqlExceptSelect = " FROM data_file sf LEFT JOIN auth_user su ON sf.user_id = su.id   ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        if (StrKit.notBlank(sort) && StrKit.notBlank(order)) {
            sqlExceptSelect += " order by sf." + sort + " " + order;
        }
        return this.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
    }
}
