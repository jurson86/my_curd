package com.github.qinyou.common.utils.gen.client;

import com.github.qinyou.common.utils.FileUtils;
import com.github.qinyou.common.utils.freemarker.FreemarkerUtils;
import com.github.qinyou.common.utils.gen.Config;
import com.github.qinyou.common.utils.gen.GeneratorConfig;
import com.github.qinyou.common.utils.gen.tools.MysqlMetaUtils;
import com.github.qinyou.common.utils.gen.tools.TableMeta;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * model 代码生成器.md
 *
 * @author zhangchuang
 */
public class ModelClient {

    private static boolean chainSetter = true;                                                    // 是否生成链式 setter 方法
    private static boolean hasExcel = false;                                                             // 是否生成 导出导出excel 所需要的注解
    private static String baseModelTplPath = GeneratorConfig.tplBasePath + "model/baseModel.ftl"; // baseModel 模板文件路径
    private static String baseModelOutPath = GeneratorConfig.outputBasePath + "model/base/";      // baseModel 文件输出路径
    private static String modelTplPath = GeneratorConfig.tplBasePath + "model/model.ftl";         // Model 模板 路径
    private static String modelOutPath = GeneratorConfig.outputBasePath + "model/";               // Model 文件输出路径


    /**
     * 生成 model
     *
     * @param tableMetas 表元数据集合
     * @throws IOException 文件读写异常
     */
    public static void generate(List<TableMeta> tableMetas) throws IOException {
        System.out.println("(*^▽^*) start generate Model");

        String baseModelTpl = FileUtils.readFile(baseModelTplPath);
        String modelTpl = FileUtils.readFile(modelTplPath);
        String renderContent;      // 渲染后文本
        String outPath;            // 文件输出路径
        Map<String, Object> params;
        for (TableMeta tableMeta : tableMetas) {
            params = new HashMap<>();
            params.put("basePackageName", GeneratorConfig.basePackageName);
            params.put("moduleName", GeneratorConfig.moduleName);
            params.put("getterTypeMap", Config.getterTypeMap);
            params.put("chainSetter", chainSetter);
            params.put("tableMeta", tableMeta);
            params.put("author", GeneratorConfig.author);
            params.put("since", GeneratorConfig.since);
            params.put("hasExcel", hasExcel);
            outPath = baseModelOutPath + "Base" + tableMeta.nameCamelFirstUp + ".java";
            renderContent = FreemarkerUtils.renderAsText(baseModelTpl, params);
            FileUtils.writeFile(renderContent, outPath);
            outPath = modelOutPath + tableMeta.nameCamelFirstUp + ".java";
            renderContent = FreemarkerUtils.renderAsText(modelTpl, params);
            FileUtils.writeFile(renderContent, outPath);
        }

        System.out.println("(*^▽^*) generate Model over");
    }

    public static void main(String[] args) throws IOException {
        MysqlMetaUtils utils = new MysqlMetaUtils();
        List<TableMeta> tableMetas = utils.loadTables(GeneratorConfig.schemaPattern, GeneratorConfig.tableNames, true);
        generate(tableMetas);
    }

}
