package com.hxkj.common.util.email;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 邮件发送工具
 * (实际使用需要做并发测试)
 * 1.每次发送邮件都启用新的线程
 * 2.使用 163邮箱
 * 使用javamail出现java.net.SocketException: Network is unreachable: connect异常 解决方法
 * 1. main方法加入System.setProperty("java.net.preferIPv4Stack", "true");
 * 2. tomcat服务器加上启动参数 -Djava.net.preferIPv4Stack=true
 */
public class ToolMail {
    private static final Logger LOG = LoggerFactory.getLogger(ToolMail.class);

    /*针对发送者 使用163 邮箱*/
    private final static String host = "smtp.163.com";               // 发送邮件的服务器的IP
    private final static String port = "25";                         // 发送邮件的服务器的端口
    private final static boolean validate = true;                    // 是否需要身份验证
    private final static String from = "15238002477@163.com";
    private final static String userName = from;
    private final static String password = "wrong_pass";

    /**
     * 判断文本中 是否包含 html 标签，包含标签即认为是 html文本
     *
     * @param content
     * @return
     */
    public static boolean checkHtml(String content) {
        Pattern pattern = Pattern.compile("<[^>]+>", Pattern.CASE_INSENSITIVE);
        Matcher matcher = pattern.matcher(content);
        return matcher.find();
    }

    public static boolean sendEmail(List<String> to, String subject, String content, String[] attachFileNames) {
        boolean flag = false;
        LOG.debug("发送邮件到：" + to.toString());
        FutureTask<Boolean> futureTask;
        SendMailProcess process;
        if (checkHtml(content)) {
            process = new SendMailProcess(MailType.HTML, host, port, validate, userName, password, from, to, subject, content, attachFileNames);
        } else {
            process = new SendMailProcess(MailType.TEXT, host, port, validate, userName, password, from, to, subject, content, attachFileNames);
        }
        futureTask = new FutureTask<Boolean>(process);
        new Thread(futureTask).start();
        try {
            flag = futureTask.get();
        } catch (InterruptedException e) {
            LOG.error(e.getMessage());
        } catch (ExecutionException e) {
            LOG.error(e.getMessage());
        }
        return flag;
    }
}