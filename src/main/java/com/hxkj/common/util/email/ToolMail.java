package com.hxkj.common.util.email;

import com.hxkj.common.util.ToolThread;
import org.apache.log4j.Logger;

import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 邮件发送工具
 * (实际使用需要做并发测试)
 * 使用javamail出现java.net.SocketException: Network is unreachable: connect异常 解决方法
 * 1. main方法加入System.setProperty("java.net.preferIPv4Stack", "true");
 * 2. tomcat服务器加上启动参数 -Djava.net.preferIPv4Stack=true
 */
public class ToolMail {
    private static final Logger LOG = Logger.getLogger(ToolMail.class);

    /*针对发送者 使用163 邮箱*/
    private final static String host = "smtp.163.com";               // 发送邮件的服务器的IP
    private final static String port = "25";                         // 发送邮件的服务器的端口
    private final static boolean validate = true;                    // 是否需要身份验证
    private final static String from = "15238002477@163.com";
    private final static String userName = "15238002477@163.com";
    private final static String password = "wrong_pass";

    /**
     * 判断文本是否文HTML文本
     * @param content
     * @return
     */
    public static boolean checkHtml(String content) {
        Pattern pattern = Pattern.compile("<[^>]+>", Pattern.CASE_INSENSITIVE);
        Matcher matcher = pattern.matcher(content);
        return matcher.find();
    }

    public static  boolean sendEmailAsync(List<String> to, String subject, String content, String[] attachFileNames){
        boolean flag = false;
        LOG.debug("发送邮件到：" + to.toString());
        SendMailProcess process;
        if (checkHtml(content)) {
            process = new SendMailProcess(MailType.HTML, host, port, validate, userName, password, from, to, subject, content, attachFileNames);
        } else {
            process = new SendMailProcess(MailType.TEXT, host, port, validate, userName, password, from, to, subject, content, attachFileNames);
        }
        flag =  ToolThread.submit(process);
        return  flag;
    }

    public static void main(String[] args) {
        List<String> to = Arrays.asList("rthlCompany@163.com","916432779@qq.com");
        String subject = "邮件重置密码";
        String content = "<h1>张闯 is a good guy</h1>";
        boolean flag = sendEmailAsync(to,subject,content,null);
        System.out.println(flag);
        System.out.println("over");
    }


}