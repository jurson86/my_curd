package com.hxkj.common.util.email;

import com.jfinal.kit.StrKit;
import org.apache.log4j.Logger;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.*;
import javax.mail.internet.*;
import java.io.UnsupportedEncodingException;
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

    private MailType sendType;            // 发送邮件的类型：text 、html
    private String host;                  // 发送邮件的服务器的IP
    private String port = "25";           // 发送邮件的服务器的端口
    private boolean validate = false;     // 是否需要身份验证
    private String from;                  // 邮件发送者的地址
    private String userName;              // 登陆邮件发送服务器的用户名
    private String password;              // 登陆邮件发送服务器的密码
    private List<String> to;              // 邮件接收者的地址

    private String subject;               // 邮件标题
    private String content;               // 邮件的文本内容
    private String[] attachFileNames;     // 邮件附件的文件名

    public SendMailProcess(MailType sendType,
                           String host, String port, boolean validate, String userName, String password,
                           String from, List<String> to,
                           String subject, String content, String[] attachFileNames) {
        this.sendType = sendType;
        this.host = host;
        this.port = port;
        this.from = from;
        this.userName = userName;
        this.password = password;
        this.to = to;
        this.validate = validate;
        this.subject = subject;
        this.content = content;
        this.attachFileNames = attachFileNames;
        // tomcat服务器加上启动参数 -Djava.net.preferIPv4Stack=true
        System.setProperty("java.net.preferIPv4Stack", "true");
    }


    @Override
    public Boolean call() {
        boolean flag;
        flag = sendEmail();
        return flag;
    }


    /**
     * 一些配置属性  (针对发送邮箱）
     *
     * @return
     */
    public Properties getProperties() {
        Properties prop = new Properties();
        prop.put("mail.smtp.host", this.host);
        prop.put("mail.smtp.port", this.port);
        prop.put("mail.smtp.auth", validate ? "true" : "false");
        // 针对 发送者 是 google 邮箱
        if (this.host.contains("smtp.gmail.com")) {
            prop.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
            prop.setProperty("mail.smtp.socketFactory.fallback", "false");
            prop.setProperty("mail.smtp.port", "465");
            prop.setProperty("mail.smtp.socketFactory.port", "465");
        }
        return prop;
    }


    public boolean sendEmail() {
        boolean flag = false;
        MailAuthenticator authenticator = null;
        Properties pro = getProperties();
        // 需要身份认证
        if (this.validate) {
            authenticator = new MailAuthenticator(this.userName, this.password);
        }

        Session sendMailSession = Session.getInstance(pro, authenticator);
        try {
            Message mailMessage = new MimeMessage(sendMailSession);
            // 邮件信息
            Address from = new InternetAddress(this.from);
            mailMessage.setFrom(from);
            Address[] tos = new InternetAddress[to.size()];
            for (int i = 0; i < to.size(); i++) {
                String receive = to.get(i);
                if (StrKit.notBlank(receive)) {
                    tos[i] = new InternetAddress(receive);
                }
            }
            mailMessage.setRecipients(Message.RecipientType.TO, tos);
            mailMessage.setSubject(this.subject);
            mailMessage.setSentDate(new Date());
            Multipart multipart = new MimeMultipart();
            // 邮件内容
            // html 或者 text 邮件
            MimeBodyPart mbp = new MimeBodyPart();
            if (this.sendType == MailType.HTML) {
                mbp.setContent(this.content, "text/html; charset=utf-8");

            } else if (this.sendType == MailType.TEXT) {
                mbp.setText(this.content);
            } else {
                throw new UnsupportedOperationException("邮件类型只可以未MailType.HTML 或者 MailType.TEXT");
            }
            multipart.addBodyPart(mbp);
            // 邮件附件
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
        } catch (MessagingException e) {
            LOG.error("发送邮件异常：", e);
        } catch (UnsupportedEncodingException e) {
            LOG.error("发送邮件异常：", e);
        } catch (UnsupportedOperationException e) {
            LOG.error("发送邮件异常：", e);
        }

        return flag;
    }


}