package com.hxkj.common.util;


import com.jfinal.log.Log;
import net.sourceforge.pinyin4j.PinyinHelper;
import net.sourceforge.pinyin4j.format.HanyuPinyinCaseType;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.HanyuPinyinToneType;
import net.sourceforge.pinyin4j.format.HanyuPinyinVCharType;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.lang3.StringEscapeUtils;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;
import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.DecimalFormat;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


/**
 * 字符串处理常用方法
 */
public abstract class ToolString {
    /**
     * 常用正则表达式：匹配非负整数（正整数 + 0）
     */
    public final static Pattern pattern_integer_1 = Pattern.compile("^\\d+$");
    /**
     * 常用正则表达式：匹配正整数
     */
    public final static Pattern pattern_integer_2 = Pattern.compile("^[0-9]*[1-9][0-9]*$");
    /**
     * 常用正则表达式：匹配非正整数（负整数  + 0）
     */
    public final static Pattern pattern_integer_3 = Pattern.compile("^((-\\d+) ?(0+))$");
    /**
     * 常用正则表达式：匹配负整数
     */
    public final static Pattern pattern_integer_4 = Pattern.compile("^-[0-9]*[1-9][0-9]*$");
    /**
     * 常用正则表达式：匹配整数
     */
    public final static Pattern pattern_integer_5 = Pattern.compile("^-?\\d+$");
    /**
     * 常用正则表达式：匹配非负浮点数（正浮点数 + 0）
     */
    public final static Pattern pattern_float_1 = Pattern.compile("^\\d+(\\.\\d+)?$");
    /**
     * 常用正则表达式：匹配正浮点数
     */
    public final static Pattern pattern_float_2 = Pattern.compile("^(([0-9]+\\.[0-9]*[1-9][0-9]*) ?([0-9]*[1-9][0-9]*\\.[0-9]+) ?([0-9]*[1-9][0-9]*))$");
    /**
     * 常用正则表达式：匹配非正浮点数（负浮点数 + 0）
     */
    public final static Pattern pattern_float_3 = Pattern.compile("^((-\\d+(\\.\\d+)?) ?(0+(\\.0+)?))$");
    /**
     * 常用正则表达式：匹配负浮点数
     */
    public final static Pattern pattern_float_4 = Pattern.compile("^(-(([0-9]+\\.[0-9]*[1-9][0-9]*) ?([0-9]*[1-9][0-9]*\\.[0-9]+) ?([0-9]*[1-9][0-9]*)))$");
    /**
     * 常用正则表达式：匹配浮点数
     */
    public final static Pattern pattern_float_5 = Pattern.compile("^(-?\\d+)(\\.\\d+)?$");
    /**
     * 常用正则表达式：匹配由26个英文字母组成的字符串
     */
    public final static Pattern pattern_letter_1 = Pattern.compile("^[A-Za-z]+$");
    /**
     * 常用正则表达式：匹配由26个英文字母的大写组成的字符串
     */
    public final static Pattern pattern_letter_2 = Pattern.compile("^[A-Z]+$");
    /**
     * 常用正则表达式：匹配由26个英文字母的小写组成的字符串
     */
    public final static Pattern pattern_letter_3 = Pattern.compile("^[a-z]+$");
    /**
     * 常用正则表达式：匹配由数字、26个英文字母组成的字符串
     */
    public final static Pattern pattern_letter_4 = Pattern.compile("^[A-Za-z0-9]+$");
    /**
     * 常用正则表达式：匹配由数字、26个英文字母、下划线组成的字符串
     */
    public final static Pattern pattern_letter_5 = Pattern.compile("^\\w+$");
    /**
     * 常用正则表达式：匹配由数字、26个英文字母、下划线、中划线、点组成的字符串
     */
    public final static Pattern pattern_letter_6 = Pattern.compile("^([a-z_A-Z-.+0-9]+)$");
    /**
     * 常用正则表达式：匹配email地址
     */
    public final static Pattern pattern_email = Pattern.compile("^[\\w-]+(\\.[\\w-]+)*@[\\w-]+(\\.[\\w-]+)+$");
    /**
     * 常用正则表达式：匹配url
     */
    public final static Pattern pattern_url_1 = Pattern.compile("^[a-zA-z]+://(\\w+(-\\w+)*)(\\.(\\w+(-\\w+)*))*(\\?\\S*)?$");
    /**
     * 常用正则表达式：匹配url
     */
    public final static Pattern pattern_url_2 = Pattern.compile("[a-zA-z]+://[^\\s]*");
    /**
     * 常用正则表达式：匹配中文字符
     */
    public final static Pattern pattern_chinese_1 = Pattern.compile("[\\u4e00-\\u9fa5]");
    /**
     * 常用正则表达式：匹配双字节字符(包括汉字在内)
     */
    public final static Pattern pattern_chinese_2 = Pattern.compile("[^\\x00-\\xff]");
    /**
     * 常用正则表达式：匹配空行
     */
    public final static Pattern pattern_line = Pattern.compile("\\n[\\s ? ]*\\r");
    /**
     * 常用正则表达式：匹配HTML标记
     */
    public final static Pattern pattern_html_1 = Pattern.compile("/ <(.*)>.* <\\/\\1> ? <(.*) \\/>/");
    /**
     * 常用正则表达式：匹配首尾空格
     */
    public final static Pattern pattern_startEndEmpty = Pattern.compile("(^\\s*) ?(\\s*$)");
    /**
     * 常用正则表达式：匹配帐号是否合法(字母开头，允许5-16字节，允许字母数字下划线)
     */
    public final static Pattern pattern_accountNumber = Pattern.compile("^[a-zA-Z][a-zA-Z0-9_]{4,15}$");
    /**
     * 常用正则表达式：匹配国内电话号码，匹配形式如 0511-4405222 或 021-87888822
     */
    public final static Pattern pattern_telephone = Pattern.compile("\\d{3}-\\d{8} ?\\d{4}-\\d{7}");
    /**
     * 常用正则表达式：腾讯QQ号, 腾讯QQ号从10000开始
     */
    public final static Pattern pattern_qq = Pattern.compile("[1-9][0-9]{4,}");
    /**
     * 常用正则表达式：匹配中国邮政编码
     */
    public final static Pattern pattern_postbody = Pattern.compile("[1-9]\\d{5}(?!\\d)");
    /**
     * 常用正则表达式：匹配身份证, 中国的身份证为15位或18位
     */
    public final static Pattern pattern_idCard = Pattern.compile("\\d{15} ?\\d{18}");
    /**
     * 常用正则表达式：IP
     */
    public final static Pattern pattern_ip = Pattern.compile("\\d+\\.\\d+\\.\\d+\\.\\d+");
    /**
     * 常用正则表达式：手机号
     */
    public final static Pattern pattern_mobile = Pattern.compile("^0?(13[0-9]|15[012356789]|18[01236789]|14[57])[0-9]{8}$");
    /**
     * 字符编码
     */
    public final static String encoding = "UTF-8";
    public final static Pattern referer_pattern = Pattern.compile("@([^@^\\s^:]{1,})([\\s\\:\\,\\;]{0,1})");//@.+?[\\s:]
    private static final Log log = Log.getLog(ToolString.class);
    private ToolString() {
    }

    /**
     * 验证字符串是否匹配指定正则表达式
     *
     * @param pattern
     * @param content
     * @return
     */
    public static boolean regExpVali(Pattern pattern, String content) {
        Matcher matcher = pattern.matcher(content);
        return matcher.matches();
    }

    /**
     * double精度调整
     *
     * @param doubleValue 需要调整的值123.454
     * @param format      目标样式".##"
     * @return
     */
    public static String decimalFormat(double doubleValue, String format) {
        DecimalFormat myFormatter = new DecimalFormat(format);
        String formatValue = myFormatter.format(doubleValue);
        return formatValue;
    }

    /**
     * Url Base64编码
     *
     * @param data 待编码数据
     * @return String 编码数据
     * @throws Exception
     */
    public static String encode(String data) {
        String str = null;
        try {
            // 执行编码
            byte[] b = Base64.encodeBase64URLSafe(data.getBytes(encoding));
            str = new String(b, encoding);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return str;
    }

    /**
     * Url Base64解码
     *
     * @param data 待解码数据
     * @return String 解码数据
     * @throws Exception
     */
    public static String decode(String data) {
        String str = null;
        try {
            // 执行解码
            byte[] b = Base64.decodeBase64(data.getBytes(encoding));
            str = new String(b, encoding);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return str;
    }

    /**
     * URL编码（utf-8）
     *
     * @param source
     * @return
     */
    public static String urlEncode(String source) {
        String result = source;
        try {
            result = java.net.URLEncoder.encode(source, encoding);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return result;
    }


    /**
     * 将文件名中的汉字转为UTF8编码的串,以便下载时能正确显示另存的文件名.
     *
     * @param s 原文件名
     * @return 重新编码后的文件名
     */
    public static String toUtf8String(String s) {
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c >= 0 && c <= 255) {
                sb.append(c);
            } else {
                byte[] b;
                try {
                    b = Character.toString(c).getBytes("utf-8");
                } catch (Exception ex) {
                    b = new byte[0];
                }
                for (int j = 0; j < b.length; j++) {
                    int k = b[j];
                    if (k < 0)
                        k += 256;
                    sb.append("%" + Integer.toHexString(k).toUpperCase());
                }
            }
        }
        return sb.toString();
    }


    /**
     * 根据内容类型判断文件扩展名
     *
     * @param contentType 内容类型
     * @return
     */
    public static String getFileExt(String contentType) {
        String fileExt = "";
        if ("image/jpeg".equals(contentType)) {
            fileExt = ".jpg";

        } else if ("audio/mpeg".equals(contentType)) {
            fileExt = ".mp3";

        } else if ("audio/amr".equals(contentType)) {
            fileExt = ".amr";

        } else if ("video/mp4".equals(contentType)) {
            fileExt = ".mp4";

        } else if ("video/mpeg4".equals(contentType)) {
            fileExt = ".mp4";
        }

        return fileExt;
    }

    /**
     * 获取bean名称
     *
     * @param bean
     * @return
     */
    public static String beanName(Object bean) {
        String fullClassName = bean.getClass().getName();
        String classNameTemp = fullClassName.substring(fullClassName.lastIndexOf(".") + 1, fullClassName.length());
        return classNameTemp.substring(0, 1) + classNameTemp.substring(1);
    }

    /**
     * 用于文件下载 文件名适配
     *
     * @param request
     * @param fileName
     * @return
     */
    public static String encodeFileName(HttpServletRequest request, String fileName) {
        String userAgent = request.getHeader("User-Agent");

        try {
            String encodedFileName = URLEncoder.encode(fileName, "UTF8");
            if (userAgent == null) {
                return "filename=\"" + encodedFileName + "\"";
            } else {
                userAgent = userAgent.toLowerCase();
                if (userAgent.indexOf("msie") != -1) {
                    return "filename=\"" + encodedFileName + "\"";
                } else if (userAgent.indexOf("opera") != -1) {
                    return "filename*=UTF-8''" + encodedFileName;
                } else if (userAgent.indexOf("safari") == -1 && userAgent.indexOf("applewebkit") == -1 && userAgent.indexOf("chrome") == -1) {
                    return userAgent.indexOf("mozilla") != -1 ? "filename*=UTF-8''" + encodedFileName : "filename=\"" + encodedFileName + "\"";
                } else {
                    return "filename=\"" + new String(fileName.getBytes("UTF-8"), "ISO8859-1") + "\"";
                }
            }
        } catch (UnsupportedEncodingException var5) {
            throw new RuntimeException(var5);
        }
    }

    /**
     * 汉字拼音全拼
     *
     * @param src
     * @return
     */
    public static String getPingYin(String src) {
        char[] t1;
        t1 = src.toCharArray();
        String[] t2;
        HanyuPinyinOutputFormat t3 = new HanyuPinyinOutputFormat();
        t3.setCaseType(HanyuPinyinCaseType.LOWERCASE);
        t3.setToneType(HanyuPinyinToneType.WITHOUT_TONE);
        t3.setVCharType(HanyuPinyinVCharType.WITH_V);
        String t4 = "";
        int t0 = t1.length;
        try {
            for (int i = 0; i < t0; i++) {
                // 判断是否为汉字字符
                if (java.lang.Character.toString(t1[i]).matches("[\\u4E00-\\u9FA5]+")) {
                    t2 = PinyinHelper.toHanyuPinyinStringArray(t1[i], t3);
                    t4 += t2[0];
                } else {
                    t4 += java.lang.Character.toString(t1[i]);
                }
            }
            return t4;
        } catch (BadHanyuPinyinOutputFormatCombination e1) {
            e1.printStackTrace();
        }
        return t4;
    }

    /**
     * 汉字拼音首字母
     *
     * @param str
     * @return
     */
    public static String getPinYinHeadChar(String str) {
        String convert = "";
        for (int j = 0; j < str.length(); j++) {
            char word = str.charAt(j);
            String[] pinyinArray = PinyinHelper.toHanyuPinyinStringArray(word);
            if (pinyinArray != null) {
                convert += pinyinArray[0].charAt(0);
            } else {
                convert += word;
            }
        }
        return convert;
    }


    /**
     * 特殊字符转义，避免XSS
     *
     * @param content
     * @return
     */
    public static String escapehtml(String content) {
        return StringEscapeUtils.escapeHtml4(content);
    }

    /**
     * 特殊字符转义，避免XSS
     *
     * @param content
     * @return
     */
    public static String unescapehtml(String content) {
        return StringEscapeUtils.unescapeHtml4(content);
    }

    /**
     * 富文本内容处理返回纯文本
     *
     * @param unsafe
     * @return
     */
    public static String cleanHtml(String unsafe) {
        String clear = Jsoup.clean(unsafe, Whitelist.simpleText());
        return clear;
    }

    /**
     * 富文本内容处理返回安全文本
     *
     * @param unsafe
     * @return
     */
    public static String safeHtml(String unsafe) {
        String safe = Jsoup.clean(unsafe, Whitelist.basic());
        return safe;
    }


    public static String formatXML(String inputXML) {
        String requestXML = null;
        Document document = null;

        try {
            SAXReader reader = new SAXReader();
            document = reader.read(new StringReader(inputXML));
        } catch (DocumentException e1) {
            e1.printStackTrace();
        }

        if (document != null) {
            XMLWriter writer = null;
            try {
                StringWriter stringWriter = new StringWriter();
                OutputFormat format = new OutputFormat("    ", true);
                writer = new XMLWriter(stringWriter, format);
                writer.write(document);
                writer.flush();
                requestXML = stringWriter.getBuffer().toString();
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (writer != null) {
                    try {
                        writer.close();
                    } catch (IOException e) {
                    }
                }
            }
        }

        return requestXML;
    }

}
