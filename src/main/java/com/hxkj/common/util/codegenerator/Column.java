package com.hxkj.common.util.codegenerator;


import com.alibaba.fastjson.annotation.JSONField;

/**
 * 数据库表 列
 */
public class Column {
    // 列名字 (默认排序为0)
    @JSONField()
    private String columnName;
    // 列名字 驼峰
    @JSONField(ordinal = 1)
    private String columnNameCamel;
    // 列名字 驼峰 首字母大写
    @JSONField(ordinal = 2)
    private String columnNameCamelFirstUp;
    // 列备注
    @JSONField(ordinal = 3)
    private String columnComment;

    // 列 数据库类型
    @JSONField(ordinal = 4)
    private String columnDBType;

    // 列 对应的java类型
    @JSONField(ordinal = 5)
    private String columnJavaType;

    // 列 是否时主键, true 是主键，false 不是主键
    private Boolean primaryKey;


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
        return primaryKey;
    }

    public void setPrimaryKey(Boolean primaryKey) {
        this.primaryKey = primaryKey;
    }
}
