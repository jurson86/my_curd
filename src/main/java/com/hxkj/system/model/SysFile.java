package com.hxkj.system.model;

import com.hxkj.system.model.base.BaseSysFile;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

import java.util.List;

/**
 * sys_file 文件表 model
 *
 * @author zhangchuang
 */
public class SysFile extends BaseSysFile<SysFile> implements java.io.Serializable {

    public static final SysFile dao = new SysFile().dao();

    public String getName() {
        return get("name");
    }

    /**
     * 根据 多个id 查询列表
     * @param ids
     * @return
     */
    public List<SysFile> findByIds(String ids){
        String sql = "select * from sys_file where id in ("+ids+")";
        return find(sql);
    }

    /**
     * 分页查询 可排序
     * @param pageNumber
     * @param pageSize
     * @param sort  排序字段
     * @param order 排序方式
     * @param where
     * @return
     */
    public Page<SysFile> page(int pageNumber, int pageSize, String sort,String order, String where) {
        String sqlSelect = " SELECT sf.*,su.name as name ";
        String sqlExceptSelect = " FROM sys_file sf LEFT JOIN sys_user su ON sf.user_id = su.id   ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        if(StrKit.notBlank(sort) && StrKit.notBlank(order)){
           sqlExceptSelect += " order by sf."+sort+" "+order;
        }
        return this.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
    }
}
