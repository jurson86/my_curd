package com.github.qinyou.common.utils.gen.client;

import com.github.qinyou.common.utils.FileUtils;
import com.github.qinyou.common.utils.freemarker.FreemarkerUtils;
import com.github.qinyou.common.utils.gen.GeneratorConfig;
import com.github.qinyou.common.utils.gen.tools.MysqlMetaUtils;
import com.github.qinyou.common.utils.gen.tools.TableMeta;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 数据字典 生成器
 */
public class ModelDictClient {
    private final static Logger LOG = LoggerFactory.getLogger(ModelDictClient.class);

    // 数据表字典
    private final static boolean genSingleFile = false;                                           // 字典是否单一文件
    private final static String dictTplPath = GeneratorConfig.tplBasePath + "model/dict.ftl";      // 模板文件路径
    private final static String dictOutDirPath = GeneratorConfig.outputBasePath + "doc/model/";   // 文件输出目录


    /**
     * 生成字典
     *
     * @param tableMetas 表元数据集合
     * @throws IOException 文件读写异常
     */
    @SuppressWarnings("UnusedAssignment")
    private static void generate(List<TableMeta> tableMetas) throws IOException {
        System.out.println("(*^▽^*) start generate dict");

        String tplContent = FileUtils.readFile(dictTplPath);  // 模板内容
        String renderContent;        // 渲染后文本
        Map<String, Object> params;  // 模板渲染参数
        String outPath;              // 文件输出路径

        if (genSingleFile) {
            // 输出 单个文件
            params = new HashMap<>();
            params.put("tableMetas", tableMetas);
            params.put("author", GeneratorConfig.author);
            renderContent = FreemarkerUtils.renderAsText(tplContent, params);

            outPath = dictOutDirPath + "model_dict.html";
            FileUtils.writeFile(renderContent, outPath);

        } else {
            // 输出 多个文件
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
        List<TableMeta> tableMetas = MysqlMetaUtils.loadTables(GeneratorConfig.schemaPattern, GeneratorConfig.tableNames, true);
        generate(tableMetas);
    }
}
