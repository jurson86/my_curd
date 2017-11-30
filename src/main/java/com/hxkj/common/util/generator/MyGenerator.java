package com.hxkj.common.util.generator;

import com.google.common.base.Preconditions;
import com.hxkj.common.util.ToolFreeMarker;
import com.jfinal.kit.PathKit;
import com.jfinal.kit.Prop;
import com.jfinal.kit.PropKit;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.dialect.Dialect;
import com.jfinal.plugin.activerecord.dialect.MysqlDialect;
import com.jfinal.plugin.activerecord.generator.MetaBuilder;
import com.jfinal.plugin.activerecord.generator.TableMeta;
import com.jfinal.plugin.activerecord.generator.TypeMapping;
import com.jfinal.template.source.ClassPathSourceFactory;

import javax.sql.DataSource;
import java.io.File;
import java.util.*;

public class MyGenerator implements Generator {


    private String[] templates;  //模板文件名 s
    private String[] paths;      //生成的文件地址 s
    private String[] fileNameWrapers;  //生成的文件名包装 s
    private String basePackageName;            // 包 基路径
    private String moduleName;                 // 模块名
    private String[] tables;                   // 需要生成代码的表
    private String tplDir;                    // freemarker 模板 目录


    private Dialect dialect;                  //数据库方言
    private String removedTableNamePrefixes;  // 去除表名 前缀

    private String[] excludedTables;          // 去除的表
    private TypeMapping typeMapping;        //  类型映射
    private ClassPathSourceFactory clapathFactory;


    public MyGenerator() {
        // 读取配置文件将 kv 放入 map 中
        Prop prop = PropKit.use("tpl/generator.properties");
        this.basePackageName = prop.get("basePackageName");
        this.moduleName = prop.get("moduleName");
        this.tables = prop.get("tables").split(";");
        this.tplDir = PathKit.getRootClassPath() + File.separator + prop.get("tplDir");
        this.dialect = new MysqlDialect();
        this.removedTableNamePrefixes = "security_";
        this.typeMapping = new TypeMapping();
        clapathFactory = new ClassPathSourceFactory();

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

    public TypeMapping getTypeMapping() {
        return typeMapping;
    }

    public void setTypeMapping(TypeMapping typeMapping) {
        this.typeMapping = typeMapping;
    }

    public String getTplDir() {
        return tplDir;
    }

    public void setTplDir(String tplDir) {
        this.tplDir = tplDir;
    }

    public String toOutPath(String out) {
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


    @Override
    public void gen2M2C(DataSource dataSource) throws Exception {
        Preconditions.checkNotNull(this.templates, "模板文件(相对模板目录) templates 不能为空");
        Preconditions.checkNotNull(this.paths, "生成文件路径 paths 不能为空");
        Preconditions.checkNotNull(this.fileNameWrapers, "生成文件名 fileNameWrapers 不能为空");
        Preconditions.checkNotNull(this.basePackageName, "基础包名 basePackageName 不能为空");
        Preconditions.checkNotNull(this.moduleName, "模块名 moduleName 不能为空");
        Preconditions.checkNotNull(this.tplDir, "模板目录 tplDir 不能为空");
        Preconditions.checkNotNull(this.tables, " 需要生成代码的 tables 不能为空");

        System.out.println("--- start ---");
        if (dataSource != null) {
            // jfinal MetaBulider
            MetaBuilder metaBuilder = new MetaBuilder(dataSource);
            metaBuilder.setDialect(this.dialect);
            metaBuilder.setTypeMapping(this.typeMapping);
            metaBuilder.addExcludedTable(this.excludedTables);
            metaBuilder.setRemovedTableNamePrefixes(this.removedTableNamePrefixes);

            List<TableMeta> tableMetas = metaBuilder.build();     // 除去 excluded 全部
            List<TableMeta> tableMetaList = new ArrayList<TableMeta>();  // 配置或者设置的表

            List<String> tableList = Arrays.asList(this.tables);
            for (TableMeta tableMeta : tableMetas) {
                if (tableList.contains(tableMeta.name)) {
                    tableMetaList.add(tableMeta);
                }
                /*
                 System.out.println("**********"+tableMeta.name+"************");
                 System.out.println("name: "+tableMeta.name);
                 System.out.println("remarks: "+tableMeta.remarks);
                 System.out.println("primaryKey: "+tableMeta.primaryKey);
                 System.out.println("baseModelName: "+tableMeta.baseModelName);
                 System.out.println("modelName: "+tableMeta.modelName);
                 System.out.println("modelContent: "+tableMeta.modelContent);  // 此时 modelContent 为 null


                List<ColumnMeta> columnMetas =  tableMeta.columnMetas;
                for(ColumnMeta columnMeta : columnMetas){
                    System.out.println("----------------------");
                    System.out.println(columnMeta.name);
                    System.out.println(columnMeta.remarks);
                    System.out.println(columnMeta.isNullable);
                    System.out.println(columnMeta.type);
                    System.out.println(columnMeta.javaType);
                    System.out.println(columnMeta.attrName);  // 驼峰 命名 字段 名字
                }
                System.out.println("*****************************");
                */
            }

            for (TableMeta tableMeta : tableMetaList) {
                Map<String, Object> content = new HashMap<String, Object>();
                String claLowName = StrKit.firstCharToLowerCase(StrKit.toCamelCase(tableMeta.modelName));

                GeneratorMeta gm = new GeneratorMeta(tableMeta.name,tableMeta.primaryKey, tableMeta.modelName, claLowName,
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
        }
    }

    @Override
    public void gen2C2M(DataSource dataSource) throws Exception {
        // 先分层 后模块 暂时不 实现
    }
}
