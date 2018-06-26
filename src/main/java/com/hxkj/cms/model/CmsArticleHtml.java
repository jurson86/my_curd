package com.hxkj.cms.model;

import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.hxkj.cms.model.base.BaseCmsArticleHtml;

/**
 * model table: cms_article_html   cms_article 的 html 文本
 * @author
 * @date 2018-06-25 19:59:09
 */
public class CmsArticleHtml extends BaseCmsArticleHtml<CmsArticleHtml> implements java.io.Serializable{

    private static final long serialVersionUID = 1L;
    public static final CmsArticleHtml dao = new CmsArticleHtml().dao();

    public Page<CmsArticleHtml>  page(int pageNumber,int pageSize,String where ){
        String sqlSelect = " select * ";
        String sqlExceptSelect = " from cms_article_html  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        /*jfinal paginate 函数使用 select count() 语句，该函数在百万级别数据效率非常低，数据量大不应该使用jfinal分页封装 */
        return this.paginate(pageNumber,pageSize,sqlSelect,sqlExceptSelect);
    }

    public CmsArticleHtml findByCmsArticleId(String articleId){
        String sql = "select * from cms_article_html where cms_article_id = ?";
        return  findFirst(sql,articleId);
    }


    public int deleteByCmsArticleId(String articleId){
        String sql = "delete from cms_article_html where cms_article_id = ?";
        return  Db.update(sql,articleId);
    }

}
