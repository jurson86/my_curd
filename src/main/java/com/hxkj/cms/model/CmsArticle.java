package com.hxkj.cms.model;

import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;
import com.hxkj.cms.model.base.BaseCmsArticle;

/**
 * model table: cms_article   
 * @author
 * @date 2018-06-25 19:59:08
 */
public class CmsArticle extends BaseCmsArticle<CmsArticle> implements java.io.Serializable{

    private static final long serialVersionUID = 1L;
    public static final CmsArticle dao = new CmsArticle().dao();

    public Page<CmsArticle>  page(int pageNumber,int pageSize,String where ){
        String sqlSelect = " select a.*,u.name as user_name ";
        String sqlExceptSelect = " from cms_article a left join auth_user u on a.user_id = u.id";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        return this.paginate(pageNumber,pageSize,sqlSelect,sqlExceptSelect);
    }

}
