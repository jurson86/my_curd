package com.hxkj.system.model;

import com.hxkj.system.model.base.BaseSysFile;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

/**
 * table name: sys_file
 */
public class SysFile extends BaseSysFile<SysFile> implements java.io.Serializable {

    public static final SysFile dao = new SysFile().dao();
    private static final long serialVersionUID = 1L;

    public String getName() {
        return get("name");
    }

    public Page<SysFile> page(int pageNumber, int pageSize, String where) {

        String sqlSelect = " SELECT sf.*,su.name as name ";
        String sqlExceptSelect = " FROM sys_file sf LEFT JOIN sys_user su ON sf.user_id = su.id   ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }

        return this.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
    }

}
