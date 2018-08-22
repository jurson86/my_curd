package com.hxkj.common.util.search;

import com.hxkj.common.constant.Constant;
import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.core.Controller;
import com.jfinal.kit.StrKit;

import javax.servlet.http.HttpServletRequest;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Map;
import java.util.TreeMap;

/**
 * 查询过滤器，将前端传递  固定格式字符串参数 解析为查询条件
 * 仅 mysql 下测试
 */
public class SearchSql implements Interceptor {

    // 查询字段前缀
    private final String prefix = "search_";

    public void intercept(Invocation ai) {
        Controller c = ai.getController();

        // 获得 查询 参数
        Map<String, Object> searchParams = getParametersStartingWith(c.getRequest(), prefix);

        // 获得 查询 所有的 查询 filter
        Map<String, SearchFilter> filters = SearchFilter.parse(searchParams);

        // 根据 filter 获得 wheresql 语句
        String whereSql = buildFilter(filters.values());
        c.setAttr(Constant.SEARCH_SQL, whereSql);

        //分页参数  bootstrap 分页 和 easyui grid 分页
        int pageNumber = 0;
        int pageSize = 0;
        if (StrKit.notBlank(c.getPara("offset"))) {
            // bootstraptable 分页
            pageNumber = c.getParaToInt("offset", 0);
            pageSize = c.getParaToInt("limit", 10);
            if (pageNumber != 0) {// 获取页数
                pageNumber = pageNumber / pageSize;
            }
            pageNumber += 1;
        } else {
            // easyui grid 分页
            pageNumber = c.getParaToInt("page", 1);
            pageSize = c.getParaToInt("rows", 1);
        }
        c.setAttr("pageNumber", pageNumber);
        c.setAttr("pageSize", pageSize);
        ai.invoke();
    }

    /**
     * 取得带相同前缀的Request Parameters, copy from spring WebUtils.
     * 返回的结果的Parameter名已去除前缀.
     */
    private Map<String, Object> getParametersStartingWith(
            HttpServletRequest request, String prefix) {
        Enumeration<String> paramNames = request.getParameterNames();
        Map<String, Object> params = new TreeMap<String, Object>();
        if (prefix == null) {
            prefix = "";
        }
        while (paramNames != null && paramNames.hasMoreElements()) {
            String paramName = paramNames.nextElement();
            if ("".equals(prefix) || paramName.startsWith(prefix)) {
                String unprefixed = paramName.substring(prefix.length());
                String[] values = request.getParameterValues(paramName);
                if (values == null || values.length == 0) {
                    // Do nothing, no values found at all.
                } else if (values.length > 1) {
                    params.put(unprefixed, values);
                } else {
                    params.put(unprefixed, values[0]);
                }
            }
        }
        return params;
    }

    /**
     * 按属性条件列表创建查询字句
     */
    private String buildFilter(final Collection<SearchFilter> filters) {
        StringBuilder sb = new StringBuilder();
        if (null != filters && filters.size() > 0) {
            for (SearchFilter filter : filters) {
                if (sb.length() > 0) {
                    sb.append(" and ");
                }
                sb.append(filter.fieldName);

                // 此处 可能要根据数据库类型 修改
                switch (filter.operator) {
                    case EQ:
                        sb.append(" ='").append(filter.value).append("'");
                        break;
                    case LIKE:
                        sb.append(" like ").append("'%" + filter.value + "%'");
                        break;
                    case GT:
                        sb.append(" >'").append(filter.value).append("'");
                        break;
                    case LT:
                        sb.append(" <'").append(filter.value).append("'");
                        break;
                    case GTE:
                        sb.append(" >='").append(filter.value).append("'");
                        break;
                    case LTE:
                        sb.append(" <='").append(filter.value).append("'");
                        break;
                    case GTES:
                        sb.append(" >=").append(filter.value);
                        break;
                    case LTES:
                        sb.append(" <=").append(filter.value);
                        break;
                    case NEQ:
                        sb.append(" !='").append(filter.value).append("'");
                        break;
                    case IN:
                        // 需要自己处理 (1,2,3) 还是 ('a','b','c'), 可直接由前端处理传递这样的参数
                        sb.append(" in ").append(filter.value);
                        break;
                }
            }
        }
        return sb.toString();
    }
}