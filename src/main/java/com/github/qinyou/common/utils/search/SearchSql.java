package com.github.qinyou.common.utils.search;

import com.github.qinyou.common.config.Constant;
import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.core.Controller;

import javax.servlet.http.HttpServletRequest;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Map;
import java.util.TreeMap;

/**
 * 前台参数转化 sql where 条件 , mysql 适用
 *
 * @author zhangchuang
 * @since
 */
public class SearchSql implements Interceptor {

    public void intercept(Invocation ai) {
        Controller c = ai.getController();
        String prefix = "search_";
        Map<String, Object> searchParams = getParametersStartingWith(c.getRequest(), prefix);
        Map<String, SearchFilter> filters = SearchFilter.parse(searchParams);
        String whereSql = buildFilter(filters.values());
        c.setAttr(Constant.SEARCH_SQL, whereSql);
        int pageNumber = c.getParaToInt("page", 1);
        int pageSize = c.getParaToInt("rows", 1);
        c.setAttr("pageNumber", pageNumber);
        c.setAttr("pageSize", pageSize);
        ai.invoke();
    }

    private Map<String, Object> getParametersStartingWith(
            HttpServletRequest request, String prefix) {
        Enumeration<String> paramNames = request.getParameterNames();
        Map<String, Object> params = new TreeMap<>();
        if (prefix == null) {
            prefix = "";
        }
        while (paramNames != null && paramNames.hasMoreElements()) {
            String paramName = paramNames.nextElement();
            if ("".equals(prefix) || paramName.startsWith(prefix)) {
                String unprefixed = paramName.substring(prefix.length());
                String[] values = request.getParameterValues(paramName);
                if (values == null || values.length == 0) {
                } else if (values.length > 1) {
                    params.put(unprefixed, values);
                } else {
                    params.put(unprefixed, values[0]);
                }
            }
        }
        return params;
    }

    private String buildFilter(final Collection<SearchFilter> filters) {
        StringBuilder sb = new StringBuilder();
        if (null != filters && filters.size() > 0) {
            for (SearchFilter filter : filters) {
                if (sb.length() > 0) {
                    sb.append(" and ");
                }
                sb.append(filter.fieldName);
                switch (filter.operator) {
                    case EQ:
                        sb.append(" ='").append(filter.value).append("'");
                        break;
                    case LIKE:
                        sb.append(" like ").append("'%").append(filter.value).append("%'");
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