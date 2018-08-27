package com.hxkj.common.util.codegenerator;

import com.alibaba.fastjson.annotation.JSONField;

import java.util.List;

/**
 * 数据库 表
 */
public class Table {

    // 表名字
    @JSONField(ordinal = 1)
    private String tableName;

    // 表名字 驼峰
    @JSONField(ordinal = 2)
    private String tableNameCamel;

    // 表名字 驼峰 首字母大写
    @JSONField(ordinal = 3)
    private String tableNameCamelFirstUp;

    // 表 备注
    @JSONField(ordinal = 4)
    private String tableComment;

    // 表 主键名字
    @JSONField(ordinal = 5)
    private List<String> tablePrimaryKeys;

    //表 列集合
    @JSONField(ordinal = 6)
    private List<Column> columnList;


    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public String getTableNameCamel() {
        return tableNameCamel;
    }

    public void setTableNameCamel(String tableNameCamel) {
        this.tableNameCamel = tableNameCamel;
    }

    public String getTableNameCamelFirstUp() {
        return tableNameCamelFirstUp;
    }

    public void setTableNameCamelFirstUp(String tableNameCamelFirstUp) {
        this.tableNameCamelFirstUp = tableNameCamelFirstUp;
    }

    public String getTableComment() {
        return tableComment;
    }

    public void setTableComment(String tableComment) {
        this.tableComment = tableComment;
    }

    public List<String> getTablePrimaryKeys() {
        return tablePrimaryKeys;
    }

    public void setTablePrimaryKeys(List<String> tablePrimaryKeys) {
        this.tablePrimaryKeys = tablePrimaryKeys;
    }

    public List<Column> getColumnList() {
        return columnList;
    }

    public void setColumnList(List<Column> columnList) {
        this.columnList = columnList;
    }
}
