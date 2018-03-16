package com.hxkj.common.util.email;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

/**
 * 邮件发送
 * 描述：使用javamail出现java.net.SocketException: Network is unreachable: connect异常 解决方法
 * 1. main方法加入System.setProperty("java.net.preferIPv4Stack", "true");
 * 2. tomcat服务器加上启动参数 -Djava.net.preferIPv4Stack=true
 */
public class ToolMail {
    public static final String sendType_text = "text";
    public static final String sendType_html = "html";

    private static final Logger LOG = LoggerFactory.getLogger(ToolMail.class);

    /**
     * 发送文本邮件
     */
    public static FutureTask<Boolean> sendTextMail(
            String host, String port, boolean validate, String userName, String password,
            String from, List<String> to,
            String subject, String content, String[] attachFileNames) {
        LOG.debug("发送文本邮件");
        SendMail mail = new SendMail(sendType_text, host, port, validate, userName, password, from, to, subject, content, attachFileNames);
        FutureTask<Boolean> result = new FutureTask<Boolean>(mail);
        new Thread(result).start();
        return result;
    }

    /**
     * 发送html邮件
     */
    public static FutureTask<Boolean> sendHtmlMail(
            String host, String port, boolean validate, String userName, String password,
            String from, List<String> to,
            String subject, String content, String[] attachFileNames) {
        LOG.debug("发送html邮件");
        SendMail mail = new SendMail(sendType_html, host, port, validate, userName, password, from, to, subject, content, attachFileNames);
        FutureTask<Boolean> result = new FutureTask<Boolean>(mail);
        new Thread(result).start();
        return result;

    }

    public static void main(String[] args) {
        String host = "smtp.163.com";               // 发送邮件的服务器的IP
        String port = "25";                         // 发送邮件的服务器的端口
        boolean validate = true;                    // 是否需要身份验证
        String from = "15238002477@163.com";        // 邮件发送者的地址
        String userName = from;                     // 登陆邮件发送服务器的用户名
        String password = "akkk1994";             // 登陆邮件发送服务器的密码

        List<String> to = new ArrayList<String>();       // 邮件接收者的地址
        to.add("916432779@qq.com");

        String subject = "测试邮件";        // 邮件标题
        String content = "内容test111";        // 邮件的文本内容
        String[] attachFileNames = new String[]{"D:/我的文档/Pictures/box_factory-7bcdffc0.gif",
                "C:/Users/Public/Pictures/Sample Pictures/timg.jpg"};
        FutureTask<Boolean> result = sendTextMail(host, port, validate, userName, password, from, to, subject, content, attachFileNames);
        try {
            boolean flag = result.get();
            System.out.println("send mail flag: " + flag);
        } catch (InterruptedException e) {
            System.out.println("发送失败");
        } catch (ExecutionException e) {
            System.out.println("发送失败");
        }
    }

}