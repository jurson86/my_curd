package com.hxkj.common.util.email;

import com.jfinal.kit.StrKit;
import org.apache.log4j.Logger;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.*;
import javax.mail.internet.*;
import java.util.Date;
import java.util.List;
import java.util.Properties;
import java.util.concurrent.Callable;

/**
 * 发送邮件
 * FutureTask<Boolean>  或者 直接调用
 */
public class SendMailProcess implements Callable<Boolean> {
    private final static Logger LOG = Logger.getLogger(SendMailProcess.class);

    private String host;                  // 发送邮件的服务器的IP
    private String port = "25";           // 发送邮件的服务器的端口
    private String from;                  // 邮件发送者的地址
    private String userName;              // 登陆邮件发送服务器的用户名
    private String password;              // 登陆邮件发送服务器的密码

    private List<String> to;              // 接收者地址
    private String subject;               // 标题
    private String content;               // 文本内容
    private String[] attachFileNames;     // 附件文件名

    public SendMailProcess(List<String> to, String subject, String content, String[] attachFileNames) {

        // 根据实际情况配置 发送者信息
        // 本地配置 的 HMailServer, 无效的域名解析 可能被接收方当作垃圾邮件。
        this.host = "localhost";
        this.port = "25";
        this.from = "zhangchuang@mail.synear.com";
        this.userName = "zhangchuang@mail.synear.com";
        this.password = "123456";

        /* 网易 163 免费邮箱
         this.host = "smtp.163.com";
         this.port = "25";
         this.from = "15238002477@163.com";
         this.userName = "15238002477@163.com";
         this.password = "wrong_password";
         */

        this.to = to;
        this.subject = subject;
        this.content = content;
        this.attachFileNames = attachFileNames;

        // tomcat服务器加上启动参数 -Djava.net.preferIPv4Stack=true
        System.setProperty("java.net.preferIPv4Stack", "true");
    }

    /**
     * FutureTask 调用发送邮件
     *
     * @return true 发送成功 false 发送失败
     */
    @Override
    public Boolean call() {
        boolean flag;
        flag = sendEmail();
        return flag;
    }


    /**
     * 发送邮件
     *
     * @return true 发送成功 false 发送失败
     */
    public boolean sendEmail() {
        boolean flag = false;

        Properties prop = new Properties();
        prop.put("mail.smtp.host", this.host);
        prop.put("mail.smtp.port", this.port);
        prop.put("mail.smtp.auth", "true");
        //发送者 为 google 邮箱
        if (this.host.contains("smtp.gmail.com")) {
            prop.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
            prop.setProperty("mail.smtp.socketFactory.fallback", "false");
            prop.setProperty("mail.smtp.port", "465");
            prop.setProperty("mail.smtp.socketFactory.port", "465");
        }
        MailAuthenticator authenticator = new MailAuthenticator(this.userName, this.password);
        Session sendMailSession = Session.getInstance(prop, authenticator);

        try {
            Message mailMessage = new MimeMessage(sendMailSession);

            // 发送者
            Address from = new InternetAddress(this.from);
            mailMessage.setFrom(from);

            // 接收者
            Address[] tos = new InternetAddress[to.size()];
            for (int i = 0; i < to.size(); i++) {
                String receive = to.get(i);
                if (StrKit.notBlank(receive)) {
                    tos[i] = new InternetAddress(receive);
                }
            }
            mailMessage.setRecipients(Message.RecipientType.TO, tos);

            // 主题
            mailMessage.setSubject(this.subject);
            // 日期
            mailMessage.setSentDate(new Date());

            // 邮件html文本内容 和 附件
            Multipart multipart = new MimeMultipart();
            MimeBodyPart mbp = new MimeBodyPart();
            mbp.setContent(this.content, "text/html; charset=utf-8");
            multipart.addBodyPart(mbp);
            if (this.attachFileNames != null) {
                for (String attachFile : this.attachFileNames) {
                    MimeBodyPart mbpTemp = new MimeBodyPart();
                    FileDataSource fds = new FileDataSource(attachFile);         //得到数据源
                    mbpTemp.setDataHandler(new DataHandler(fds));                //得到附件本身并至入BodyPart
                    String filename = MimeUtility.encodeText(fds.getName());     // 解决附件名乱码
                    mbpTemp.setFileName(filename);                               //得到文件名同样至入BodyPart
                    multipart.addBodyPart(mbpTemp);
                }
            }
            mailMessage.setContent(multipart);

            Transport.send(mailMessage);

            flag = true;
        } catch (Exception e) {
            LOG.error(e.getMessage(), e);
        }
        return flag;
    }


}