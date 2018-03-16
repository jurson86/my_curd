package com.hxkj.common.util.email;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;


public class MailAuthenticator extends Authenticator {
    private String userName;
    private String password;

    public MailAuthenticator(String username, String password) {
        this.userName = username;
        this.password = password;
    }

    public PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(this.userName, this.password);
    }
}