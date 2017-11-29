package com.hxkj.common.util.generator;

import com.jfinal.kit.StrKit;

public class GeneratorColumnMeta {
    private String name;
    private String javaType;
    private String attrName;
    private String attrNameUp;  // 字段名驼峰，首字母大写
    private String type;
    private String isNullable;
    private String isPrimaryKey;
    private String defaultValue;
    private String remarks;

    public GeneratorColumnMeta(String name, String javaType, String attrName, String type, String isNullable, String isPrimaryKey, String defaultValue, String remarks) {
        this.name = name;
        this.javaType = javaType;
        this.attrName = attrName;
        this.attrNameUp = StrKit.firstCharToUpperCase(attrName);
        this.type = type;
        this.isNullable = isNullable;
        this.isPrimaryKey = isPrimaryKey;
        this.defaultValue = defaultValue;
        this.remarks = remarks;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getJavaType() {
        return javaType;
    }

    public void setJavaType(String javaType) {
        this.javaType = javaType;
    }

    public String getAttrName() {
        return attrName;
    }

    public void setAttrName(String attrName) {
        this.attrName = attrName;
    }

    public String getAttrNameUp() {
        return attrNameUp;
    }

    public void setAttrNameUp(String attrNameUp) {
        this.attrNameUp = attrNameUp;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getIsNullable() {
        return isNullable;
    }

    public void setIsNullable(String isNullable) {
        this.isNullable = isNullable;
    }

    public String getIsPrimaryKey() {
        return isPrimaryKey;
    }

    public void setIsPrimaryKey(String isPrimaryKey) {
        this.isPrimaryKey = isPrimaryKey;
    }

    public String getDefaultValue() {
        return defaultValue;
    }

    public void setDefaultValue(String defaultValue) {
        this.defaultValue = defaultValue;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }


}
