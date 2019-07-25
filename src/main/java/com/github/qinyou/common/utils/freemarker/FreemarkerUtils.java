package com.github.qinyou.common.utils.freemarker;

import com.github.qinyou.common.constant.Constant;
import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapper;
import freemarker.template.Template;
import lombok.extern.slf4j.Slf4j;

import java.io.*;
import java.util.HashMap;
import java.util.Map;

/**
 * FreeMarker工具类
 *
 * @author zhangchuang
 */
@Slf4j
public class FreemarkerUtils {

    /**
     * 通过模板文本字符串和数据获得渲染后的文本
     *
     * @param templateContent 模板文本内容
     * @param paramMap        数据
     * @return
     */
    public static String renderAsText(String templateContent, Map<String, Object> paramMap) {
        StringWriter writer = new StringWriter();
        try {
            Configuration cfg = new Configuration(Configuration.VERSION_2_3_28);
            cfg.setTemplateLoader(new StringTemplateLoader(templateContent));
            cfg.setDefaultEncoding(Constant.DEFAULT_ENCODEING);
            Template template = cfg.getTemplate("");
            template.process(paramMap, writer);
        } catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return writer.toString();
    }

    /**
     * 通过模板和数据生成渲染过文件
     *
     * @param templateDirectory 模板文件目录
     * @param templateName      模板文件名字
     * @param paramMap          数据
     * @param saveFilePath      生成存放路径
     */
    public static void renderToFile(String templateDirectory, String templateName, Map<String, Object> paramMap, String saveFilePath) {
        FileOutputStream fileOutputStream = null;
        OutputStreamWriter outputStreamWriter = null;
        try {
            Configuration configuration = new Configuration(Configuration.VERSION_2_3_22);
            File file = new File(templateDirectory);
            configuration.setDirectoryForTemplateLoading(file);
            configuration.setObjectWrapper(new DefaultObjectWrapper(Configuration.VERSION_2_3_22));
            Template template = configuration.getTemplate(templateName, Constant.DEFAULT_ENCODEING);
            File saveFile = new File(saveFilePath);
            fileOutputStream = new FileOutputStream(saveFile);
            outputStreamWriter = new OutputStreamWriter(fileOutputStream, Constant.DEFAULT_ENCODEING);
            BufferedWriter bufferedWriter = new BufferedWriter(outputStreamWriter);
            template.process(paramMap, bufferedWriter);
            bufferedWriter.flush();
            outputStreamWriter.close();
            fileOutputStream.close();
        } catch (Exception e) {
            log.error(e.getMessage(), e);
        } finally {
            if (null != fileOutputStream) {
                try {
                    fileOutputStream.close();
                } catch (IOException e) {
                    log.error(e.getMessage(), e);
                }
            }
            if (null != outputStreamWriter) {
                try {
                    outputStreamWriter.close();
                } catch (IOException e) {
                    log.error(e.getMessage(), e);
                }
            }
        }
    }

    public static void main(String[] args) {
        String tpl = "<tr>  \n" +
                "    <td>请假类型：</td>  \n" +
                "    <td>  \n" +
                "        <select id=\"leaveType\" name=\"form_string_请假类型\" class=\"easyui-combobox\" required=\"true\" style=\"width:200px\" value=\"${(请假类型)!}\">  \n" +
                "            <option>公休</option>  \n" +
                "            <option>病假</option>  \n" +
                "            <option>调休</option>  \n" +
                "            <option>事假</option>  \n" +
                "            <option>婚假</option>  \n" +
                "        </select>  \n" +
                "    </td>  \n" +
                "</tr>  \n" +
                "<tr>  \n" +
                "    <td>开始时间：</td>   \n" +
                "    <td><input id=\"startTime\" name=\"form_date_开始时间\" class=\"easyui-datebox\" required=\"true\"  style=\"width:200px\" value=\"${(开始时间)!}\" /></td>  \n" +
                "</tr>  \n" +
                "<tr>  \n" +
                "    <td>结束时间：</td>  \n" +
                "    <td><input id=\"endTime\" name=\"form_date_结束时间\" class=\"easyui-datebox\" required=\"true\"   style=\"width:200px\"/></td>  \n" +
                "</tr>  \n" +
                "<tr>  \n" +
                "    <td>请假原因：</td>  \n" +
                "    <td>  \n" +
                "        <input id=\"reason\" name=\"form_string_请假原因\"   class=\"easyui-textbox\" multiline=\"true\" style=\"height:50px;width:200px\" />\n" +
                "    </td>  \n" +
                "</tr>  \n";
        Map<String,Object> params = new HashMap<>();
        params.put("请假类型","公休");
        System.out.println(renderAsText(tpl,params));
    }
}
