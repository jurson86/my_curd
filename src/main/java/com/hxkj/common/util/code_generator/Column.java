package com.hxkj.common.util.code_generator;


/**
 * 数据库列
 */
public class Column {
    private String columnName;
    private String columnNameCamel;
    private String columnNameCamelFirstUp;

    private String columnComment;
    private String columnDBType;
    private String columnJavaType;

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
}
