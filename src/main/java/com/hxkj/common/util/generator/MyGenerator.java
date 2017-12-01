package com.hxkj.common.util.generator;

import com.google.common.base.Preconditions;
import com.hxkj.common.util.ToolFreeMarker;
import com.jfinal.kit.*;
import com.jfinal.plugin.activerecord.dialect.Dialect;
import com.jfinal.plugin.activerecord.dialect.MysqlDialect;
import com.jfinal.plugin.activerecord.generator.ColumnMeta;
import com.jfinal.plugin.activerecord.generator.MetaBuilder;
import com.jfinal.plugin.activerecord.generator.TableMeta;
import com.jfinal.plugin.activerecord.generator.TypeMapping;

import javax.sql.DataSource;
import java.io.File;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class MyGenerator {

    private String[] templates;                 //模板文件名 s
    private String[] paths;                     //生成的文件地址 s
    private String[] fileNameWrapers;           //生成的文件名包装 s
    private String basePackageName;             // 包 基路径
    private String moduleName;                  // 模块名
    private String[] tables;                    // 需要生成代码的表
    private String tplDir;                      // freemarker 模板 目录
    private DataSource dataSource;              // 数据源

    private Dialect dialect;                    //数据库方言
    private String removedTableNamePrefixes;    // 去除表名 前缀
    private String[] excludedTables;            // 去除的表

    public MyGenerator(DataSource dataSource) {

        this.dataSource = dataSource;
        Prop prop = PropKit.use("generator.properties");
        this.basePackageName = prop.get("basePackageName");
        this.moduleName = prop.get("moduleName");
        this.tables = prop.get("tables").split(";");
        this.tplDir = PathKit.getRootClassPath() + File.separator + prop.get("tplDir");

        this.dialect = new MysqlDialect();
        this.removedTableNamePrefixes = "security_";
    }

    public String[] getTemplates() {
        return templates;
    }

    public void setTemplates(String[] templates) {
        this.templates = templates;
    }

    public String[] getPaths() {
        return paths;
    }

    public void setPaths(String[] paths) {
        this.paths = paths;
    }

    public String[] getfileNameWrapers() {
        return fileNameWrapers;
    }

    public void setfileNameWrapers(String[] fileNameWrapers) {
        this.fileNameWrapers = fileNameWrapers;
    }

    public String[] getFileNameWrapers() {
        return fileNameWrapers;
    }

    public void setFileNameWrapers(String[] fileNameWrapers) {
        this.fileNameWrapers = fileNameWrapers;
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

    public String[] getTables() {
        return tables;
    }

    public void setTables(String[] tables) {
        this.tables = tables;
    }

    public String getRemovedTableNamePrefixes() {
        return removedTableNamePrefixes;
    }

    public void setRemovedTableNamePrefixes(String removedTableNamePrefixes) {
        this.removedTableNamePrefixes = removedTableNamePrefixes;
    }

    public String[] getExcludedTables() {
        return excludedTables;
    }

    public void setExcludedTables(String[] excludedTables) {
        this.excludedTables = excludedTables;
    }

    public String getTplDir() {
        return tplDir;
    }

    public void setTplDir(String tplDir) {
        this.tplDir = tplDir;
    }

    private String toOutPath(String out) {
        String basePath = PathKit.getRootClassPath() + File.separator;
        String pathStr = out;
        String outPath = basePath + "out" + File.separator
                + (this.basePackageName + "." + this.moduleName).replace(".", File.separator) + File.separator
                + pathStr + File.separator;

        File file = new File(outPath);
        if (!file.exists()) {
            file.mkdirs();
        }
        return outPath;
    }

    // 官方 column 没有  remark
    private void rebuildColumnMetas(List<TableMeta> tableMetas) {
        Connection conn = null;
        try {
            conn = this.dataSource.getConnection();
            DatabaseMetaData dbMeta = conn.getMetaData();
            Iterator var4 = tableMetas.iterator();
            while (var4.hasNext()) {
                TableMeta tableMeta = (TableMeta) var4.next();
                Map<String, String> nameRemarkMap = new HashMap<String, String>();
                for (ColumnMeta columnMeta : tableMeta.columnMetas) {
                    ResultSet rs = dbMeta.getColumns(conn.getCatalog(), (String) null, tableMeta.name, (String) null);
                    while (rs.next()) {
                        // 如果无 remark 不放入 blank
                        if (StrKit.notBlank(rs.getString("REMARKS"))) {
                            nameRemarkMap.put(rs.getString("COLUMN_NAME"), rs.getString("REMARKS"));
                        }
                    }
                    rs.close();
                }
                String[] keys = tableMeta.primaryKey.split(",");
                for (ColumnMeta columnMeta : tableMeta.columnMetas) {
                    columnMeta.remarks = nameRemarkMap.get(columnMeta.name);
                    for (String key : keys) {
                        if (columnMeta.name.equalsIgnoreCase(key)) {
                            columnMeta.isPrimaryKey = "PRI";
                            break;
                        }
                    }
                }
            }
        } catch (SQLException var21) {
            throw new RuntimeException(var21);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException var20) {
                    LogKit.error(var20.getMessage(), var20);
                }
            }

        }

    }


    public void gen2M2C() throws Exception {
        Preconditions.checkNotNull(this.templates, "模板文件(相对模板目录) templates 不能为空");
        Preconditions.checkNotNull(this.paths, "生成文件路径 paths 不能为空");
        Preconditions.checkNotNull(this.fileNameWrapers, "生成文件名 fileNameWrapers 不能为空");
        Preconditions.checkNotNull(this.basePackageName, "基础包名 basePackageName 不能为空");
        Preconditions.checkNotNull(this.moduleName, "模块名 moduleName 不能为空");
        Preconditions.checkNotNull(this.tplDir, "模板目录 tplDir 不能为空");
        Preconditions.checkNotNull(this.tables, " 需要生成代码的 tables 不能为空");

        System.out.println("--- start ---");
        if (dataSource != null) {
            MetaBuilder metaBuilder = new MetaBuilder(this.dataSource);
            metaBuilder.setDialect(this.dialect);
            metaBuilder.setTypeMapping(new TypeMapping());
            metaBuilder.addExcludedTable(this.excludedTables);
            metaBuilder.setRemovedTableNamePrefixes(this.removedTableNamePrefixes);


            List<TableMeta> tableMetas = metaBuilder.build();     // 除去 excluded 全部
            List<TableMeta> tableMetaList = new ArrayList<TableMeta>();  // 配置或者设置的表
            List<String> tableList = Arrays.asList(this.tables);
            for (TableMeta tableMeta : tableMetas) {

                if (tableList.contains(tableMeta.name)) {
                    tableMetaList.add(tableMeta);
                }
            }

            rebuildColumnMetas(tableMetaList);
            for (TableMeta tableMeta : tableMetaList) {
                Map<String, Object> content = new HashMap<String, Object>();
                String claLowName = StrKit.firstCharToLowerCase(StrKit.toCamelCase(tableMeta.modelName));
                GeneratorMeta gm = new GeneratorMeta(tableMeta.name, tableMeta.primaryKey, tableMeta.modelName, claLowName,
                        this.basePackageName, this.moduleName, tableMeta.columnMetas, tableMeta.remarks);
                content.put("meta", gm);
                for (int i = 0; i < templates.length; i++) {
                    String fileName;
                    // .java 文件 使用 首字母大写的驼峰, 非java 文件使用驼峰命名
                    if (fileNameWrapers[i].endsWith(".java")) {
                        fileName = toOutPath(paths[i]) + fileNameWrapers[i].replaceAll("@tableName@", tableMeta.modelName);
                    } else {
                        fileName = toOutPath(paths[i]) + fileNameWrapers[i].replaceAll("@tableName@", claLowName);
                    }
                    System.out.println("fileName: " + fileName);
                    ToolFreeMarker.makeHtml(tplDir, templates[i], content, fileName);
                }
            }

            System.out.println("--- ok 刷新项目 ---");
            System.out.println("--- 注意 1 添加数据表mapping ---");
            System.out.println("---      2 添加相应的route   ---");
        }
    }


}
