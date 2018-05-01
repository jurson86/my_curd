package com.hxkj.system.model;

import com.hxkj.system.model.base.BaseSysNews;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

/**
 * sys_news 文章表  model
 * @author  zhangchuang
 */
public class SysNews extends BaseSysNews<SysNews> implements java.io.Serializable {

    public static final SysNews dao = new SysNews().dao();

    /**
     * 分页查询
     * @param pageNumber
     * @param pageSize
     * @param where
     * @return
     */
    public Page<SysNews> page(int pageNumber, int pageSize, String where) {
        String sqlSelect = " select sn.id,sn.title,sn.create_time,sn.tags, sn.user_id, su.name as user_name ";
        String sqlExceptSelect = " from sys_news sn left join sys_user  su on sn.user_id = su.id";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        return this.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
    }

}
