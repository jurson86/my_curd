package com.github.qinyou.common.utils.jwt;

import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * jwt 用户信息封装
 */
@Getter
@Setter
public class UserClaim implements Serializable {
    private static final long serialVersionUID = -600345604328767722L;
    private String iss;           // 签发人
    private Date iat;             // 签发时间
    private Date exp;             // 过期时间
    private String username;      // 用户名
    private List<String> roles;   // 角色
}
