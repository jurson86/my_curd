package com.hxkj.common.util.email;

import com.hxkj.common.util.ExecutorServiceUtils;
import org.apache.log4j.Logger;

import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Future;

/**
 * 邮件发送工具
 * 如使用javamail出现java.net.SocketException: Network is unreachable: connect异常 解决方法
 * 1. main方法加入System.setProperty("java.net.preferIPv4Stack", "true");
 * 2. tomcat服务器加上启动参数 -Djava.net.preferIPv4Stack=true
 */
public class SendMailUtils {
    private static final Logger LOG = Logger.getLogger(SendMailUtils.class);


    /**
     * 异步发送邮件
     *
     * @param to              接收人地址列表
     * @param subject         邮件主题
     * @param content         邮件内容
     * @param attachFileNames 邮件附件
     * @return 是否发送成功
     */
    public static boolean sendEmailAsync(List<String> to, String subject, String content, String[] attachFileNames) {
        boolean flag = false;

        // 输出调试日志
        if (LOG.isDebugEnabled()) {
            for (String toItem : to) {
                if (LOG.isDebugEnabled())
                    LOG.debug("---- send mail to：" + toItem);
            }
        }

        SendMailProcess process = new SendMailProcess(to, subject, content, attachFileNames);
        Future<Boolean> result = ExecutorServiceUtils.pool.submit(process);
        try {
            flag = result.get();
        } catch (Exception e) {
            LOG.error(e.getMessage(), e);
        }
        return flag;
    }

    /**
     * 同步 发送邮件
     *
     * @param to 接收人
     * @param subject 主题
     * @param content 内容
     * @param attachFileNames 附件
     * @return 是否发送成功
     */
    public static boolean sendEmail(List<String> to, String subject, String content, String[] attachFileNames) {
        boolean flag;
        // 输出调试日志
        if (LOG.isDebugEnabled()) {
            for (String toItem : to) {
                if (LOG.isDebugEnabled())
                    LOG.debug("---- send mail to：" + toItem);
            }
        }
        SendMailProcess process = new SendMailProcess(to, subject, content, attachFileNames);
        flag = process.sendEmail();
        return flag;
    }

    public static void main(String[] args) {
        List<String> to = Arrays.asList("15238002477@163.com", "916432779@qq.com");   // 163 识别为 垃圾邮件， qq 邮箱不识别为垃圾邮件
        String subject = "邮件重置密码";
        String content = "<h1>zhang chuang is a good guy</h1>";
        boolean flag = sendEmailAsync(to, subject, content, null);
        System.out.println(flag);
        System.out.println("over");
    }


}