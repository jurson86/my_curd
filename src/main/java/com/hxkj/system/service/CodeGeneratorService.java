package com.hxkj.system.service;

import com.alibaba.fastjson.JSON;
import com.hxkj.common.util.ToolDateTime;
import com.hxkj.common.util.ToolFreeMarker;
import com.hxkj.common.util.code_generator.Table;
import com.jfinal.kit.PathKit;
import com.jfinal.kit.Prop;
import com.jfinal.kit.PropKit;
import com.jfinal.kit.StrKit;
import org.apache.log4j.Logger;

import java.io.File;
import java.util.*;

/**
 * 通过json生成代码文件
 *
 * @author zhangchuang
 * @date 2017-12-18
 */
public class CodeGeneratorService {
    private final static Logger LOG = Logger.getLogger(CodeGeneratorService.class);

    // 模板目录
    private String tplDir;
    // 模板文件名
    private String[] templates;
    // 生成的文件地址
    private String[] paths;
    // 生成的文件名包装
    private String[] fileNameWrapers;
    // 包基路径
    private String basePackageName;

    public CodeGeneratorService() {
        init();
    }

    public static void main(String[] args) {
        CodeGeneratorService service = new CodeGeneratorService();
        List<Table> tables = new ArrayList<Table>();
        String jsonStr = "{\n" +
                "\t\t\t\"tableName\": \"bus_novel\",\n" +
                "\t\t\t\"tableNameCamel\": \"busNovel\",\n" +
                "\t\t\t\"tableNameCamelFirstUp\": \"BusNovel\",\n" +
                "\t\t\t\"tableComment\": \"代码生成测试表--小说表\",\n" +
                "\t\t\t\"tablePrimaryKeys\": [\n" +
                "\t\t\t\t\"id\"\n" +
                "\t\t\t],\n" +
                "\t\t\t\"columnList\": [\n" +
                "\t\t\t\t{\n" +
                "\t\t\t\t\t\"columnName\": \"id\",\n" +
                "\t\t\t\t\t\"columnNameCamel\": \"id\",\n" +
                "\t\t\t\t\t\"columnNameCamelFirstUp\": \"Id\",\n" +
                "\t\t\t\t\t\"columnComment\": \"主键\",\n" +
                "\t\t\t\t\t\"columnDBType\": \"VARCHAR\",\n" +
                "\t\t\t\t\t\"columnJavaType\": \"java.lang.String\"\n" +
                "\t\t\t\t},\n" +
                "\t\t\t\t{\n" +
                "\t\t\t\t\t\"columnName\": \"title\",\n" +
                "\t\t\t\t\t\"columnNameCamel\": \"title\",\n" +
                "\t\t\t\t\t\"columnNameCamelFirstUp\": \"Title\",\n" +
                "\t\t\t\t\t\"columnComment\": \"书名\",\n" +
                "\t\t\t\t\t\"columnDBType\": \"VARCHAR\",\n" +
                "\t\t\t\t\t\"columnJavaType\": \"java.lang.String\"\n" +
                "\t\t\t\t},\n" +
                "\t\t\t\t{\n" +
                "\t\t\t\t\t\"columnName\": \"author\",\n" +
                "\t\t\t\t\t\"columnNameCamel\": \"author\",\n" +
                "\t\t\t\t\t\"columnNameCamelFirstUp\": \"Author\",\n" +
                "\t\t\t\t\t\"columnComment\": \"作者\",\n" +
                "\t\t\t\t\t\"columnDBType\": \"VARCHAR\",\n" +
                "\t\t\t\t\t\"columnJavaType\": \"java.lang.String\"\n" +
                "\t\t\t\t},\n" +
                "\t\t\t\t{\n" +
                "\t\t\t\t\t\"columnName\": \"create_time\",\n" +
                "\t\t\t\t\t\"columnNameCamel\": \"createTime\",\n" +
                "\t\t\t\t\t\"columnNameCamelFirstUp\": \"CreateTime\",\n" +
                "\t\t\t\t\t\"columnComment\": \"创建时间\",\n" +
                "\t\t\t\t\t\"columnDBType\": \"DATETIME\",\n" +
                "\t\t\t\t\t\"columnJavaType\": \"java.util.Date\"\n" +
                "\t\t\t\t}\n" +
                "\t\t\t]\n" +
                "\t\t}";
        Table table = JSON.parseObject(jsonStr, Table.class);
        tables.add(table);
        service.generate("bus", tables);
    }

    /**
     * 生成代码 文件
     *
     * @param moduleName
     * @param tables
     * @return
     */
    public List<String> generate(String moduleName, List<Table> tables) {
        List<String> outPathList = new ArrayList<String>();
        for (Table table : tables) {
            Map<String, Object> content = new HashMap<String, Object>();
            content.put("moduleName", moduleName);
            content.put("basePackageName", this.basePackageName);
            content.put("table", table);
            content.put("generateDate", ToolDateTime.format(new Date(), ToolDateTime.pattern_ymd_hms));
            for (int i = 0; i < this.templates.length; i++) {
                String fileName;
                // .java 文件 使用 首字母大写的驼峰, 非java 文件使用驼峰命名
                if (fileNameWrapers[i].endsWith(".java")) {
                    fileName = toOutPath(moduleName, this.paths[i]) + fileNameWrapers[i].replaceAll("@tableName@", table.getTableNameCamelFirstUp());
                } else {
                    fileName = toOutPath(moduleName, this.paths[i] + File.separator + moduleName) + fileNameWrapers[i].replaceAll("@tableName@", table.getTableNameCamel());
                }
                fileName = fileName.replaceAll("\\\\", "/");
                LOG.debug("fileName:  " + fileName);
                ToolFreeMarker.makeHtml(tplDir, templates[i], content, fileName);
                outPathList.add(fileName);
            }
        }
        return outPathList;
    }

    /**
     * 配置初始化以及配置有效性检查
     */
    private void init() {
        Prop prop = PropKit.use("generator.properties");
        this.tplDir = prop.get("tplDir");
        this.basePackageName = prop.get("basePackageName");
        this.templates = prop.get("templates").split(";");
        this.paths = prop.get("paths").split(";");
        this.fileNameWrapers = prop.get("fileNameWrapers").split(";");
        if (StrKit.isBlank(basePackageName)) {
            throw new IllegalArgumentException("配置文件错误： basePackageName");
        }
        if (StrKit.isBlank(tplDir)) {
            throw new IllegalArgumentException("配置文件出错： tplDir");
        }
        this.tplDir = PathKit.getRootClassPath() + "/" + this.tplDir;

        if (this.templates.length != this.paths.length || this.templates.length != this.fileNameWrapers.length || this.paths.length != this.fileNameWrapers.length) {
            throw new IllegalArgumentException("配置文件出错： templates、paths、fileNameWrapers 个数不匹配");
        }
    }

    /**
     * 处理代码生成生成文件路径
     *
     * @param moduleName
     * @param out
     * @return
     */
    private String toOutPath(String moduleName, String out) {
        String basePath = PathKit.getRootClassPath() + File.separator;
        String pathStr = out;
        String outPath = basePath + "out" + File.separator
                + (this.basePackageName + "." + moduleName).replace(".", File.separator) + File.separator
                + pathStr + File.separator;
        File file = new File(outPath);
        if (!file.exists()) {
            file.mkdirs();
        }
        return outPath;
    }


}
