package com.hxkj.common.util.code_generator;


import com.alibaba.fastjson.annotation.JSONField;

/**
 * 数据库列
 */
public class Column {
    @JSONField(ordinal = 0)
    private String columnName;
    @JSONField(ordinal = 1)
    private String columnNameCamel;
    @JSONField(ordinal = 2)
    private String columnNameCamelFirstUp;

    @JSONField(ordinal = 3)
    private String columnComment;
    @JSONField(ordinal = 4)
    private String columnDBType;
    @JSONField(ordinal = 5)
    private String columnJavaType;

    private Boolean isPrimaryKey;


    public String getColumnName() {
        return columnName;
    }

    public void setColumnName(String columnName) {
        this.columnName = columnName;
    }

    public String getColumnNameCamel() {
        return columnNameCamel;
    }

    public void setColumnNameCamel(String columnNameCamel) {
        this.columnNameCamel = columnNameCamel;
    }

    public String getColumnNameCamelFirstUp() {
        return columnNameCamelFirstUp;
    }

    public void setColumnNameCamelFirstUp(String columnNameCamelFirstUp) {
        this.columnNameCamelFirstUp = columnNameCamelFirstUp;
    }

    public String getColumnComment() {
        return columnComment;
    }

    public void setColumnComment(String columnComment) {
        this.columnComment = columnComment;
    }

    public String getColumnDBType() {
        return columnDBType;
    }

    public void setColumnDBType(String columnDBType) {
        this.columnDBType = columnDBType;
    }

    public String getColumnJavaType() {
        return columnJavaType;
    }

    public void setColumnJavaType(String columnJavaType) {
        this.columnJavaType = columnJavaType;
    }

    public Boolean getPrimaryKey() {
        return isPrimaryKey;
    }

    public void setPrimaryKey(Boolean primaryKey) {
        isPrimaryKey = primaryKey;
    }
}
