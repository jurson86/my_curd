package com.hxkj.common.util;


import com.jfinal.kit.PathKit;
import com.jfinal.log.Log;
import freemarker.cache.TemplateLoader;
import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapper;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.apache.commons.io.FileUtils;

import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * FreeMarker工具类
 */
public abstract class ToolFreeMarker {

    private static final Log log = Log.getLog(ToolFreeMarker.class);

    public static void main(String[] args) {

        String tplFilePath  = PathKit.getRootClassPath()+File.separator+"tpl"+File.separator+"test.ftl";
        System.out.println(tplFilePath);
        if(!new File(tplFilePath).exists()){
            return;
        }
        String encoding="UTF-8";
        try {
            String tplContent = FileUtils.readFileToString(new File(tplFilePath),encoding);
            List<Map<String,Object>> maps = new ArrayList<Map<String,Object>>();
            Map<String,Object> map = new HashMap<String,Object>();
            map.put("name","chuang");
            Map<String,Object> map2 = new HashMap<String,Object>();
            map2.put("name","li");
            maps.add(map);
            maps.add(map2);

            Map<String,Object> paramMap = new HashMap<String,Object>();
            paramMap.put("persons",maps);
            String result = render(tplContent,paramMap);
            System.out.println(result);

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 通过ftl 和参数 获得 渲染后的 字符串
     *
     * @param templateContent   ftl文件文本内容
     * @param paramMap
     * @return
     */
    public static String render(String templateContent, Map<String, Object> paramMap) {
        StringWriter writer = new StringWriter();
        try {

            Configuration cfg = new Configuration(Configuration.VERSION_2_3_22);
            cfg.setTemplateLoader(new StringTemplateLoader(templateContent));
            cfg.setDefaultEncoding("UTF-8");
            Template template = cfg.getTemplate("");

            template.process(paramMap, writer);
        } catch (IOException e) {
            e.printStackTrace();
            if (log.isErrorEnabled()) log.error(e.getMessage(), e);
        } catch (TemplateException e) {
            e.printStackTrace();
            if (log.isErrorEnabled()) log.error(e.getMessage(), e);
        }
        return writer.toString();
    }

    /**
     * 生成HTML
     *
     * @param tlDirectory tl模板目录
     * @param tlName      ftl模板
     * @param paramMap    参数map
     * @param htmlPath    生成HTML存放路径
     */
    public static void makeHtml(String tlDirectory, String tlName, Map<String, Object> paramMap, String htmlPath) {
        FileOutputStream fileOutputStream = null;
        OutputStreamWriter outputStreamWriter = null;
        try {
            Configuration configuration = new Configuration(Configuration.VERSION_2_3_22);
            File file = new File(tlDirectory);// .ftl模板目录
            configuration.setDirectoryForTemplateLoading(file);
            configuration.setObjectWrapper(new DefaultObjectWrapper(Configuration.VERSION_2_3_22));
            Template template = configuration.getTemplate(tlName, ToolString.encoding);

            File file2 = new File(htmlPath);// 生成html目录
            fileOutputStream = new FileOutputStream(file2);
            outputStreamWriter = new OutputStreamWriter(fileOutputStream, ToolString.encoding);
            BufferedWriter bufferedWriter = new BufferedWriter(outputStreamWriter);
            template.process(paramMap, bufferedWriter);
            bufferedWriter.flush();
            outputStreamWriter.close();
            fileOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (TemplateException e) {
            e.printStackTrace();
        } finally {
            if (null != fileOutputStream) {
                try {
                    fileOutputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (null != outputStreamWriter) {
                try {
                    outputStreamWriter.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

}

class StringTemplateLoader implements TemplateLoader {

    private String template;

    public StringTemplateLoader(String template) {
        this.template = template;
        if (template == null) {
            this.template = "";
        }
    }

    public void closeTemplateSource(Object templateSource) throws IOException {
        ((StringReader) templateSource).close();
    }

    public Object findTemplateSource(String name) throws IOException {
        return new StringReader(template);
    }

    public long getLastModified(Object templateSource) {
        return 0;
    }

    public Reader getReader(Object templateSource, String encoding) throws IOException {
        return (Reader) templateSource;
    }

}