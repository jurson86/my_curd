package com.hxkj.system.model;

import com.hxkj.system.model.base.BaseSysFile;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

/**
 * sys_file 文件表 model
 * @author  zhangchuang
 */
public class SysFile extends BaseSysFile<SysFile> implements java.io.Serializable {

    public static final SysFile dao = new SysFile().dao();

    public String getName() {
        return get("name");
    }

    /**
     * 分页查询
     * @param pageNumber
     * @param pageSize
     * @param where 查询条件
     * @return
     */
    public Page<SysFile> page(int pageNumber, int pageSize, String where) {
        String sqlSelect = " SELECT sf.*,su.name as name ";
        String sqlExceptSelect = " FROM sys_file sf LEFT JOIN sys_user su ON sf.user_id = su.id   ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        return this.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
    }

}
