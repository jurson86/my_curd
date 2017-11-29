package com.hxkj.common.util.generator;

import com.jfinal.plugin.activerecord.generator.ColumnMeta;

import java.util.ArrayList;
import java.util.List;


public class GeneratorMeta {

    public List<GeneratorColumnMeta> cols; //字段  - （attrName重要)
    private String tableName;  //数据库表名字
    private String claUpName; //类名大写 (modelName)
    private String remarks; //表备注
    private String claLowName; //类名小写(表名 驼峰命名，首字母小写)
    private String basePackageName; // 包基础路径
    private String moduleName;      // 模块的名称

    public GeneratorMeta() {
    }

    public GeneratorMeta(String tableName, String claUpName, String claLowName, String basePackageName, String moduleName, List<ColumnMeta> cols, String remarks) {
        super();
        this.tableName = tableName;
        this.claUpName = claUpName;
        this.claLowName = claLowName;
        this.basePackageName = basePackageName;
        this.moduleName = moduleName;

        this.cols = new ArrayList<GeneratorColumnMeta>();
        for (ColumnMeta col : cols) {
            GeneratorColumnMeta generatorColumnMeta =
                    new GeneratorColumnMeta(col.name, col.javaType, col.attrName, col.type, col.isNullable, col.isPrimaryKey, col.defaultValue, col.remarks);
            this.cols.add(generatorColumnMeta);
        }

        this.remarks = remarks;
    }


    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public String getClaUpName() {
        return claUpName;
    }

    public void setClaUpName(String claUpName) {
        this.claUpName = claUpName;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getClaLowName() {
        return claLowName;
    }

    public void setClaLowName(String claLowName) {
        this.claLowName = claLowName;
    }


    public String getBasePackageName() {
        return basePackageName;
    }

    public void setBasePackageName(String basePackageName) {
        this.basePackageName = basePackageName;
    }

    public String getModuleName() {
        return moduleName;
    }

    public void setModuleName(String moduleName) {
        this.moduleName = moduleName;
    }

    public List<GeneratorColumnMeta> getCols() {
        return cols;
    }

    public void setCols(List<GeneratorColumnMeta> cols) {
        this.cols = cols;
    }
}
