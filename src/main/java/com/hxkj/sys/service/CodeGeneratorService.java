package com.hxkj.sys.service;

import com.google.common.base.Preconditions;
import com.hxkj.common.util.DateTimeUtils;
import com.hxkj.common.util.FreemarkerUtils;
import com.hxkj.common.util.codegenerator.Table;
import com.jfinal.kit.PathKit;
import com.jfinal.kit.Prop;
import com.jfinal.kit.PropKit;
import org.apache.log4j.Logger;

import java.io.File;
import java.util.*;

/**
 * 生成代码文件
 *
 * @author zhangchuang
 * @date 2017-12-18
 */
public class CodeGeneratorService {
    private final static Logger LOG = Logger.getLogger(CodeGeneratorService.class);

    private final static String CONFIG_FILE = "generator.properties"; // 配置文件名字

    private static String basePackageName;   // 包基路径
    private static String tplDir;            // 模板目录
    private static String[] templates;       // 模板文件名
    private static String[] paths;           // 生成的文件路径
    private static String[] fileNameWrapers; // 生成的文件名包装

    static {
        Prop prop = PropKit.use(CONFIG_FILE);
        // 配置参数初始化
        tplDir = prop.get("tplDir");
        basePackageName = prop.get("basePackageName");
        templates = prop.get("templates") != null ? prop.get("templates").split(";") : null;
        paths = prop.get("paths") != null ? prop.get("paths").split(";") : null;
        fileNameWrapers = prop.get("fileNameWrapers") != null ? prop.get("fileNameWrapers").split(";") : null;

        // 配置参数检查
        Preconditions.checkNotNull(tplDir);
        Preconditions.checkNotNull(basePackageName);
        Preconditions.checkNotNull(templates);
        Preconditions.checkNotNull(paths);
        Preconditions.checkNotNull(fileNameWrapers);

        // 配置文件格式错误
        if (templates.length != paths.length || templates.length != fileNameWrapers.length || paths.length != fileNameWrapers.length) {
            throw new IllegalArgumentException("配置文件出错： templates、paths、fileNameWrapers 个数不匹配");
        }

        tplDir = PathKit.getRootClassPath() + "/" + tplDir;
    }

    private CodeGeneratorService() {
    }

    /**
     * 生成代码 文件
     *
     * @param moduleName 模块名称
     * @param tables     需要生成代码的表
     * @return 生成文件完整路径 列表
     */
    public static List<String> generate(String moduleName, List<Table> tables) {
        List<String> saveFilePaths = new ArrayList<String>();
        for (Table table : tables) {
            Map<String, Object> content = new HashMap<String, Object>();
            content.put("moduleName", moduleName);
            content.put("basePackageName", basePackageName);
            content.put("table", table);
            content.put("generateDate", DateTimeUtils.format(new Date(), DateTimeUtils.pattern_ymd_hms));
            for (int i = 0; i < templates.length; i++) {
                String saveFilePath;
                // .java 文件 使用 首字母大写的驼峰, 非java 文件使用驼峰命名
                if (fileNameWrapers[i].endsWith(".java")) {
                    saveFilePath = outPathBuild(moduleName, paths[i]) + fileNameWrapers[i].replaceAll("@tableName@", table.getTableNameCamelFirstUp());
                } else {
                    saveFilePath = outPathBuild(moduleName, paths[i] + File.separator + moduleName) + fileNameWrapers[i].replaceAll("@tableName@", table.getTableNameCamel());
                }
                // 生成的文件的 全路径
                saveFilePath = saveFilePath.replaceAll("\\\\", "/");

                if (LOG.isDebugEnabled()) {
                    LOG.debug("--------- saveFilePath:  " + saveFilePath);
                }

                FreemarkerUtils.renderToFile(tplDir, templates[i], content, saveFilePath);
                saveFilePaths.add(saveFilePath);
            }
        }
        return saveFilePaths;
    }

    /**
     * 处理代码生成生成文件路径
     *
     * @param moduleName
     * @param path
     * @return
     */
    private static String outPathBuild(String moduleName, String path) {
        String basePath = PathKit.getRootClassPath() + File.separator;
        // class目录/out/基础包名/模块名/配置的输出目录
        String outPath = basePath + "out" + File.separator
                + (basePackageName + "." + moduleName).replace(".", File.separator) + File.separator
                + path + File.separator;
        File file = new File(outPath);
        if (!file.exists()) {
            file.mkdirs();
        }
        return outPath;
    }


}
