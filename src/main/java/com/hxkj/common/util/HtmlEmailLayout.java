package com.hxkj.common.util;

import org.apache.log4j.Layout;
import org.apache.log4j.Level;
import org.apache.log4j.helpers.Transform;
import org.apache.log4j.spi.LocationInfo;
import org.apache.log4j.spi.LoggingEvent;

import java.util.Date;

/**
 * 响应式的log4j 日志网页
 * 用于日志邮件显示（pc和mobile 显示都很赞)
 *
 * @author zhangchuang
 */
public class HtmlEmailLayout extends Layout {

    public static final String LOCATION_INFO_OPTION = "LocationInfo";
    public static final String TITLE_OPTION = "Title";
    static String TRACE_PREFIX = "<br>&nbsp;&nbsp;&nbsp;&nbsp;";
    protected final int BUF_SIZE = 256;
    protected final int MAX_CAPACITY = 1024;
    boolean locationInfo = false;
    String title = "Log4J Log Messages";
    private StringBuffer sbuf = new StringBuffer(BUF_SIZE);

    public boolean getLocationInfo() {
        return locationInfo;
    }

    public void setLocationInfo(boolean flag) {
        locationInfo = flag;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContentType() {
        return "text/html";
    }

    public void activateOptions() {
    }

    public String format(LoggingEvent event) {

        if (sbuf.capacity() > MAX_CAPACITY) {
            sbuf = new StringBuffer(BUF_SIZE);
        } else {
            sbuf.setLength(0);
        }
        sbuf.append("<tr><td class=\"wrapper\" style=\"font-family: sans-serif; font-size: 14px; vertical-align: top; box-sizing: border-box; padding: 20px;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;\"><tr>");

        sbuf.append("<p style=\"font-family: sans-serif; font-size: 14px; font-weight: normal; margin: 0; Margin-bottom: 15px;\">");
        sbuf.append(DateTimeUtils.format(new Date(), DateTimeUtils.pattern_ymd_hms));
        sbuf.append("</p>");

        sbuf.append("<p style=\"font-family: sans-serif; font-size: 14px; font-weight: normal; margin: 0; Margin-bottom: 15px;\">");
        sbuf.append("<strong>Level: </strong>");
        if (event.getLevel().equals(Level.DEBUG)) {
            sbuf.append("<font color=\"#339933\">");
            sbuf.append(Transform.escapeTags(String.valueOf(event.getLevel())));
            sbuf.append("</font>");
        } else if (event.getLevel().isGreaterOrEqual(Level.WARN)) {
            sbuf.append("<font color=\"#993300\"><strong>");
            sbuf.append(Transform.escapeTags(String.valueOf(event.getLevel())));
            sbuf.append("</strong></font>");
        } else {
            sbuf.append(Transform.escapeTags(String.valueOf(event.getLevel())));
        }
        sbuf.append(",&nbsp;&nbsp; <strong>Time: </strong>");
        sbuf.append(event.timeStamp - LoggingEvent.getStartTime());
        String escapedThread = Transform.escapeTags(event.getThreadName());
        sbuf.append(",&nbsp;&nbsp;<strong>Thread: </strong>");
        sbuf.append(escapedThread);

        sbuf.append("</p>");

        String escapedLogger = Transform.escapeTags(event.getLoggerName());
        sbuf.append(" <p style=\"font-family: sans-serif; font-size: 14px; font-weight: normal; margin: 0; Margin-bottom: 15px;\"><strong>Category: </strong>");
        sbuf.append(escapedLogger);
        sbuf.append("</p>");

        if (locationInfo) {
            LocationInfo locInfo = event.getLocationInformation();
            sbuf.append(" <p style=\"font-family: sans-serif; font-size: 14px; font-weight: normal; margin: 0; Margin-bottom: 15px;\"><strong>Location: </strong>: ");
            sbuf.append(Transform.escapeTags(locInfo.getFileName()));
            sbuf.append(':');
            sbuf.append(locInfo.getLineNumber());
            sbuf.append("</p>");
        }

        sbuf.append(" <p style=\"font-family: sans-serif; font-size: 14px; font-weight: normal; margin: 0; Margin-bottom: 15px;\"><strong>Message: </strong>: ");
        sbuf.append(Transform.escapeTags(event.getRenderedMessage()));
        sbuf.append("</p>");


        if (event.getNDC() != null) {
            sbuf.append("<p style=\"font-family: sans-serif; font-size: 14px; font-weight: normal; margin: 0; Margin-bottom: 15px;\">");
            sbuf.append("NDC: " + Transform.escapeTags(event.getNDC()));
            sbuf.append("</p>");
        }

        String[] s = event.getThrowableStrRep();
        if (s != null) {
            sbuf.append("<p style=\"color:#993300;font-family: sans-serif; font-size:.5rem; font-weight: normal; margin: 0; Margin-bottom: 15px;word-wrap: break-word;word-break: break-all;\">");
            appendThrowableAsHTML(s, sbuf);
            sbuf.append("</p>");
        }

        sbuf.append("</tr></table></td></tr>");
        return sbuf.toString();
    }

    void appendThrowableAsHTML(String[] s, StringBuffer sbuf) {
        if (s != null) {
            int len = s.length;
            if (len == 0)
                return;
            sbuf.append(Transform.escapeTags(s[0]));
            sbuf.append(Layout.LINE_SEP);
            for (int i = 1; i < len; i++) {
                sbuf.append(TRACE_PREFIX);
                sbuf.append(Transform.escapeTags(s[i]));
                sbuf.append(Layout.LINE_SEP);
            }
        }
    }


    public String getHeader() {
        StringBuffer sbuf = new StringBuffer();
        sbuf.append("<!doctype html><html><head>");
        sbuf.append("<meta name=\"viewport\" content=\"width=device-width\">\n" +
                "    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">" + Layout.LINE_SEP);
        sbuf.append("<title>" + title + "</title>");
        sbuf.append("<style type=\"text/css\">");
        sbuf.append("@media only screen and (max-width:620px){table[class=body] h1{font-size:28px!important;margin-bottom:10px!important}table[class=body] a,table[class=body] ol,table[class=body] p,table[class=body] span,table[class=body] td,table[class=body] ul{font-size:16px!important}table[class=body] .article,table[class=body] .wrapper{padding:10px!important}table[class=body] .content{padding:0!important}table[class=body] .container{padding:0!important;width:100%!important}table[class=body] .main{border-left-width:0!important;border-radius:0!important;border-right-width:0!important}table[class=body] .btn table{width:100%!important}table[class=body] .btn a{width:100%!important}table[class=body] .img-responsive{height:auto!important;max-width:100%!important;width:auto!important}}@media all{.ExternalClass{width:100%}.ExternalClass,.ExternalClass div,.ExternalClass font,.ExternalClass p,.ExternalClass span,.ExternalClass td{line-height:100%}.apple-link a{color:inherit!important;font-family:inherit!important;font-size:inherit!important;font-weight:inherit!important;line-height:inherit!important;text-decoration:none!important}.btn-primary table td:hover{background-color:#34495e!important}.btn-primary a:hover{background-color:#34495e!important;border-color:#34495e!important}}");
        sbuf.append("</style>");
        sbuf.append("</head>");
        sbuf.append("<body class=\"\" style=\"background-color: #f6f6f6; font-family: sans-serif; -webkit-font-smoothing: antialiased; font-size: 14px; line-height: 1.4; margin: 0; padding: 0; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"body\" style=\"border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%; background-color: #f6f6f6;\"><tr><td style=\"font-family: sans-serif; font-size: 14px; vertical-align: top;\">&nbsp;</td><td class=\"container\" style=\"font-family: sans-serif; font-size: 14px; vertical-align: top; display: block; Margin: 0 auto; max-width: 580px; padding: 10px; width: 580px;\"><div class=\"content\" style=\"box-sizing: border-box; display: block; Margin: 0 auto; max-width: 580px; padding: 10px;\"><span class=\"preheader\" style=\"color: transparent; display: none; height: 0; max-height: 0; max-width: 0; opacity: 0; overflow: hidden; mso-hide: all; visibility: hidden; width: 0;\">系统错误日志</span><table class=\"main\" style=\"border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%; background: #ffffff; border-radius: 3px;\">");
        return sbuf.toString();
    }


    public String getFooter() {
        StringBuffer sbuf = new StringBuffer();
        sbuf.append("</table></div></td><td style=\"font-family: sans-serif; font-size: 14px; vertical-align: top;\">&nbsp;</td></tr></table></body></html>");
        return sbuf.toString();
    }


    public boolean ignoresThrowable() {
        return false;
    }
}