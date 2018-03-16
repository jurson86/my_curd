package com.hxkj.common.util.email;

import com.jfinal.kit.StrKit;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.*;
import javax.mail.internet.*;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;
import java.util.Properties;
import java.util.concurrent.Callable;


public class SendMail implements Callable<Boolean> {

    private final static Logger LOG = LoggerFactory.getLogger(ToolMail.class);

    private String sendType;        // 发送邮件的类型：text 、html
    private String host;            // 发送邮件的服务器的IP
    private String port = "25";     // 发送邮件的服务器的端口
    private String from;            // 邮件发送者的地址
    private String userName;        // 登陆邮件发送服务器的用户名
    private String password;        // 登陆邮件发送服务器的密码
    private List<String> to;        // 邮件接收者的地址

    private boolean validate = false;     // 是否需要身份验证

    private String subject;               // 邮件标题
    private String content;               // 邮件的文本内容
    private String[] attachFileNames;     // 邮件附件的文件名

    public SendMail(String sendType,
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
    public Boolean call() throws Exception {
        boolean flag = false;
        if (sendType.equals(ToolMail.sendType_text)) {
            flag = sendTextMail();
        } else if (sendType.equals(ToolMail.sendType_html)) {
            flag = sendHtmlMail();
        } else {
            LOG.error("发送邮件参数sendType不能为空");
        }
        return flag;
    }


    /**
     * 获得邮件会话属性
     */
    public Properties getProperties() {
        Properties prop = new Properties();
        prop.put("mail.smtp.host", this.host);
        prop.put("mail.smtp.port", this.port);
        prop.put("mail.smtp.auth", validate ? "true" : "false");

        if (this.host.contains("smtp.gmail.com")) {
            prop.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
            prop.setProperty("mail.smtp.socketFactory.fallback", "false");
            prop.setProperty("mail.smtp.port", "465");
            prop.setProperty("mail.smtp.socketFactory.port", "465");
        }
        return prop;
    }

    /**
     * 如果有附件就加入附件
     *
     * @param multipart
     */
    private void addAttachFiles(Multipart multipart) throws MessagingException, UnsupportedEncodingException {
        for (String attachFile : this.attachFileNames) {
            MimeBodyPart mbp = new MimeBodyPart();
            FileDataSource fds = new FileDataSource(attachFile);     //得到数据源
            mbp.setDataHandler(new DataHandler(fds));                //得到附件本身并至入BodyPart
            String filename = MimeUtility.encodeText(fds.getName()); // 解决附件名乱码
            mbp.setFileName(filename);                               //得到文件名同样至入BodyPart
            multipart.addBodyPart(mbp);
        }
    }

    /**
     * 以文本格式发送邮件
     */
    public boolean sendTextMail() {
        //身份认证
        MailAuthenticator authenticator = null;
        Properties pro = getProperties();
        if (this.validate) {
            authenticator = new MailAuthenticator(this.userName, this.password);
        }

        // 根据邮件会话属性和密码验证器构造一个发送邮件的session
        Session sendMailSession = Session.getInstance(pro, authenticator);
        try {
            // 根据session创建一个邮件消息
            Message mailMessage = new MimeMessage(sendMailSession);

            // 创建邮件发送者地址
            Address from = new InternetAddress(this.from);

            // 设置邮件消息的发送者
            mailMessage.setFrom(from);

            // 创建邮件的接收者地址，并设置到邮件消息中
            Address[] tos = new InternetAddress[to.size()];
            for (int i = 0; i < to.size(); i++) {
                String receive = to.get(i);
                if (StrKit.notBlank(receive)) {
                    tos[i] = new InternetAddress(receive);
                }
            }

            // Message.RecipientType.TO属性表示接收者的类型为TO
            mailMessage.setRecipients(Message.RecipientType.TO, tos);

            // 设置邮件消息的主题
            mailMessage.setSubject(this.subject);

            // 设置邮件消息发送的时间
            mailMessage.setSentDate(new Date());

            Multipart multipart = new MimeMultipart();

            // 正文
            MimeBodyPart mbp = new MimeBodyPart();
            mbp.setText(this.content);
            multipart.addBodyPart(mbp);

            // 附件
            addAttachFiles(multipart);

            // 设置邮件消息的主要内容
            mailMessage.setContent(multipart);
            // 发送邮件
            Transport.send(mailMessage);
            return true;
        } catch (MessagingException e) {
            LOG.error("发送文本邮件异常：" + e.getMessage(), e);
            return false;
        } catch (UnsupportedEncodingException e) {
            LOG.error("发送文本邮件异常：" + e.getMessage(), e);
            return false;
        }
    }

    /**
     * 以HTML格式发送邮件
     */
    public boolean sendHtmlMail() {
        //身份认证
        MailAuthenticator authenticator = null;
        Properties pro = getProperties();
        if (this.validate) {
            authenticator = new MailAuthenticator(this.userName, this.password);
        }

        // 根据邮件会话属性和密码验证器构造一个发送邮件的session
        Session sendMailSession = Session.getInstance(pro, authenticator);// getDefaultInstance
        try {
            // 根据session创建一个邮件消息
            Message mailMessage = new MimeMessage(sendMailSession);
            // 创建邮件发送者地址
            Address from = new InternetAddress(this.from);
            // 设置邮件消息的发送者
            mailMessage.setFrom(from);
            // 创建邮件的接收者地址，并设置到邮件消息中
            Address[] tos = new InternetAddress[to.size()];
            for (int i = 0; i < to.size(); i++) {
                String receive = to.get(i);
                if (StrKit.notBlank(receive)) {
                    tos[i] = new InternetAddress(receive);
                }
            }
            // Message.RecipientType.TO属性表示接收者的类型为TO
            mailMessage.setRecipients(Message.RecipientType.TO, tos);

            // 设置邮件消息的主题
            mailMessage.setSubject(this.subject);

            // 设置邮件消息发送的时间
            mailMessage.setSentDate(new Date());

            // MiniMultipart类是一个容器类，包含MimeBodyPart类型的对象
            Multipart multipart = new MimeMultipart();

            // 正文
            BodyPart mbp = new MimeBodyPart();
            mbp.setContent(this.content, "text/html; charset=utf-8");// 设置HTML内容
            multipart.addBodyPart(mbp);
            // 附件
            addAttachFiles(multipart);

            // 将MiniMultipart对象设置为邮件内容
            mailMessage.setContent(multipart);
            // 发送邮件
            Transport.send(mailMessage);
            return true;
        } catch (MessagingException e) {
            LOG.error("发送html邮件异常：" + e.getMessage(), e);
            return false;
        } catch (UnsupportedEncodingException e) {
            LOG.error("发送html邮件异常：" + e.getMessage(), e);
            return false;
        }
    }


}