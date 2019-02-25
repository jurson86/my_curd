package com.github.qinyou.common.utils.gen.client;

import com.github.qinyou.common.utils.FileUtils;
import com.github.qinyou.common.utils.freemarker.FreemarkerUtils;
import com.github.qinyou.common.utils.gen.GeneratorConfig;
import com.github.qinyou.common.utils.gen.tools.MysqlMetaUtils;
import com.github.qinyou.common.utils.gen.tools.TableMeta;
import com.jfinal.kit.StrKit;
import org.joda.time.DateTime;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.util.*;

/**
 * 一对多表代码生成器
 *
 * @author zhangchuang
 */
public class OneToManyClient {
    private final static Logger LOG = LoggerFactory.getLogger(OneToManyClient.class);

    // 主表
    private final static String mainTable = "ex_staff";

    // 子表
    private final static Set<String> sonTables = new LinkedHashSet<String>() {{
        add("ex_staff_education");
        add("ex_staff_experience");
        add("ex_staff_family");
    }};

    // 从表中 依赖字段名, 如果 被依赖非 主表ID, 需要自行 修改 生成的相关代码
    private final static String MAIN_ID = "exStaffId";

    // 模板 及 输出目录
    private final static String controllerTplPath = GeneratorConfig.tplBasePath + "oneToMany/controller.ftl";// controller 模板文件路径
    private final static String controllerOutPath = GeneratorConfig.outputBasePath + "controller/";             // controller 渲染文件输出路径
    private final static String indexTplPath = GeneratorConfig.tplBasePath + "oneToMany/index.ftl";                     // 主页面模板路径
    private final static String formTplPath = GeneratorConfig.tplBasePath + "oneToMany/form.ftl";                      // 表单页模板路径
    private final static String pageOutDirPath = GeneratorConfig.outputBasePath + "views/" + GeneratorConfig.moduleName + "/"; // 页面 输出文件输出目录

    /**
     * 多表代码生成器
     *
     * @param mainTableMeta
     * @param sonTableMetas
     * @throws IOException
     */
    public static void generate(TableMeta mainTableMeta, List<TableMeta> sonTableMetas) throws IOException {
        System.out.println("(*^▽^*) start generate oneToMany ");

        Map<String, Object> params = new HashMap<>();
        params.put("basePackageName", GeneratorConfig.basePackageName);
        params.put("moduleName", GeneratorConfig.moduleName);
        params.put("author", GeneratorConfig.author);
        params.put("since", GeneratorConfig.since);
        params.put("generateDate", new DateTime().toString("yyyy-MM-dd HH:mm:ss"));
        params.put("excludeFields", GeneratorConfig.excludeFields);
        params.put("mainTableMeta", mainTableMeta);
        params.put("sonTableMetas", sonTableMetas);
        params.put("mainId", MAIN_ID);
        params.put("mainIdCamel", StrKit.toCamelCase(MAIN_ID));

        // controller
        String controllerTplContent = FileUtils.readFile(controllerTplPath);
        String outPath = controllerOutPath + mainTableMeta.nameCamelFirstUp + "Controller.java";
        String renderContent = FreemarkerUtils.renderAsText(controllerTplContent, params);
        FileUtils.writeFile(renderContent, outPath);

        // index.ftl
        String indexTplContent = FileUtils.readFile(indexTplPath);
        outPath = pageOutDirPath + mainTableMeta.nameCamel + ".ftl";
        renderContent = FreemarkerUtils.renderAsText(indexTplContent, params);
        FileUtils.writeFile(renderContent, outPath);


        // form.ftl
        String formTplContent = FileUtils.readFile(formTplPath);
        outPath = pageOutDirPath + mainTableMeta.nameCamel + "_form.ftl";
        renderContent = FreemarkerUtils.renderAsText(formTplContent, params);
        FileUtils.writeFile(renderContent, outPath);

        System.out.println("(*^▽^*)  generate oneToMany over ");
    }

    public static void main(String[] args) throws IOException {
        Set<String> mainTableSet = new HashSet<>();
        mainTableSet.add(mainTable);
        List<TableMeta> mainTableMetas = MysqlMetaUtils.loadTables(GeneratorConfig.schemaPattern, mainTableSet, true);
        TableMeta mainTableMeta = mainTableMetas.get(0);
        List<TableMeta> sonTableMetas = MysqlMetaUtils.loadTables(GeneratorConfig.schemaPattern, sonTables, true);
        generate(mainTableMeta, sonTableMetas);
    }
}
