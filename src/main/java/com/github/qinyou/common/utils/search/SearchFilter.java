package com.github.qinyou.common.utils.search;

import com.jfinal.kit.StrKit;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class SearchFilter {

    // 查询字段名
    public final String fieldName;
    // 查询字段值
    public final Object value;
    // 查询条件
    public final Operator operator;

    public SearchFilter(String fieldName, Operator operator, Object value) {
        this.fieldName = fieldName;
        this.value = value;
        this.operator = operator;
    }

    /**
     * searchParams中key的格式为OPERATOR_FIELDNAME
     */
    public static Map<String, SearchFilter> parse(Map<String, Object> searchParams) {
        Map<String, SearchFilter> filters = new HashMap<>();

        for (Entry<String, Object> entry : searchParams.entrySet()) {
            // 过滤掉空值
            String key = entry.getKey();
            Object value = entry.getValue();
            if (StrKit.isBlank((String) value)) {
                continue;
            }

            // 拆分operator与field

            String[] names = key.split("_");
            if (names.length < 2) {
                throw new IllegalArgumentException(key + " is not a valid search filter name");
            }

            // field 中可能有查询条件
            String filedName;
            StringBuilder filedNameTemp = new StringBuilder();
            for (int i = 1; i < names.length; i++) {
                filedNameTemp.append(names[i]).append("_");
            }
            if (filedNameTemp.substring(filedNameTemp.length() - 1).equals("_")) {
                filedNameTemp = new StringBuilder(filedNameTemp.substring(0, filedNameTemp.length() - 1));
            }
            filedName = filedNameTemp.toString();

            // 查询条件
            Operator operator = Operator.valueOf(names[0]);

            // 创建searchFilter
            SearchFilter filter = new SearchFilter(filedName, operator, value);

            filters.put(key, filter);
        }

        return filters;
    }

    public enum Operator {
        EQ, LIKE, GT, LT, GTE, NEQ, LTE, GTES, LTES, IN
    }
}