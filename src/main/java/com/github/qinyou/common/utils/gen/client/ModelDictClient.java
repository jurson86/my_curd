package com.github.qinyou.common.utils.gen.client;

import com.github.qinyou.common.utils.FileUtils;
import com.github.qinyou.common.utils.freemarker.FreemarkerUtils;
import com.github.qinyou.common.utils.gen.GeneratorConfig;
import com.github.qinyou.common.utils.gen.tools.MysqlMetaUtils;
import com.github.qinyou.common.utils.gen.tools.TableMeta;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 数据字典生成器
 *
 * @author zhangchuang
 */
public class ModelDictClient {
    private final static boolean singleFile = false;                                           //  true ? 多张表一个文件:每张表一个文件
    private final static String dictTplPath = GeneratorConfig.tplBasePath + "model/dict.ftl";  // 模板路径
    private final static String dictOutDirPath = GeneratorConfig.outputBasePath + "doc/model/";  // 输出目录

    /**
     * 生成字典
     *
     * @param tableMetas 表元数据集合
     * @throws IOException 文件读写异常
     */
    public static void generate(List<TableMeta> tableMetas) throws IOException {
        System.out.println("(*^▽^*) start generate dict");

        String tplContent = FileUtils.readFile(dictTplPath);  // 模板内容
        String renderContent;        // 渲染后文本
        String outPath;              // 输出路径
        Map<String, Object> params;  // 渲染参数
        if (singleFile) {
            params = new HashMap<>();
            params.put("tableMetas", tableMetas);
            params.put("author", GeneratorConfig.author);
            renderContent = FreemarkerUtils.renderAsText(tplContent, params);
            outPath = dictOutDirPath + "model_dict.html";
            FileUtils.writeFile(renderContent, outPath);
        } else {
            List<TableMeta> tableMetasTemp;
            for (TableMeta tableMeta : tableMetas) {
                tableMetasTemp = new ArrayList<>();
                tableMetasTemp.add(tableMeta);
                params = new HashMap<>();
                params.put("tableMetas", tableMetasTemp);
                params.put("author", GeneratorConfig.author);
                renderContent = FreemarkerUtils.renderAsText(tplContent, params);
                outPath = dictOutDirPath + tableMeta.name + ".html";
                FileUtils.writeFile(renderContent, outPath);
            }
        }

        System.out.println("(*^▽^*) generate dict over");
    }

    public static void main(String[] args) throws IOException {
        MysqlMetaUtils utils = new MysqlMetaUtils();
        List<TableMeta> tableMetas = utils.loadTables(GeneratorConfig.schemaPattern, GeneratorConfig.tableNames, true);
        generate(tableMetas);
    }
}
