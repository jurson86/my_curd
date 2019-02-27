package com.github.qinyou.common.utils.jwt;

import java.util.Date;
import java.util.List;
import java.util.StringJoiner;

public class UserClaim {
    private static final long serialVersionUID = -600345604328767722L;

    private String iss;       // 签发人
    private Date iat;         // 签发时间
    private Date exp;         // 过期时间
    private String username;      // 用户名
    private List<String> roles;   // 角色

    public String getIss() {
        return iss;
    }

    public void setIss(String iss) {
        this.iss = iss;
    }

    public Date getIat() {
        return iat;
    }

    public void setIat(Date iat) {
        this.iat = iat;
    }

    public Date getExp() {
        return exp;
    }

    public void setExp(Date exp) {
        this.exp = exp;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public List<String> getRoles() {
        return roles;
    }

    public void setRoles(List<String> roles) {
        this.roles = roles;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", UserClaim.class.getSimpleName() + "[", "]")
                .add("iss='" + iss + "'")
                .add("iat=" + iat)
                .add("exp=" + exp)
                .add("username='" + username + "'")
                .add("roles=" + roles)
                .toString();
    }
}
