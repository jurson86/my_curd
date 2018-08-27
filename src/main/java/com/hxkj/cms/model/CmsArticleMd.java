package com.hxkj.cms.model;

import com.hxkj.cms.model.base.BaseCmsArticleMd;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;

/**
 * model table: cms_article_md   cms_article 的 markdown 文本
 *
 * @author
 * @date 2018-06-25 19:59:09
 */
public class CmsArticleMd extends BaseCmsArticleMd<CmsArticleMd> implements java.io.Serializable {

    public static final CmsArticleMd dao = new CmsArticleMd().dao();
    private static final long serialVersionUID = 1L;

    public Page<CmsArticleMd> page(int pageNumber, int pageSize, String where) {
        String sqlSelect = " select * ";
        String sqlExceptSelect = " from cms_article_md  ";
        if (StrKit.notBlank(where)) {
            sqlExceptSelect += " where " + where;
        }
        /*jfinal paginate 函数使用 select count() 语句，该函数在百万级别数据效率非常低，数据量大不应该使用jfinal分页封装 */
        return this.paginate(pageNumber, pageSize, sqlSelect, sqlExceptSelect);
    }

    public CmsArticleMd findByCmsArticleId(String articleId) {
        String sql = "select * from cms_article_md where cms_article_id = ?";
        return findFirst(sql, articleId);
    }

    public int deleteByCmsArticleId(String articleId) {
        String sql = "delete from cms_article_md where cms_article_id = ?";
        return Db.update(sql, articleId);
    }
}
