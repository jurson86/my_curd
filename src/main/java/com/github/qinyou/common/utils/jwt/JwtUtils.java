package com.github.qinyou.common.utils.jwt;

import com.alibaba.fastjson.JSONObject;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.JwtBuilder;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

import javax.crypto.spec.SecretKeySpec;
import javax.xml.bind.DatatypeConverter;
import java.security.Key;
import java.util.ArrayList;
import java.util.List;

/**
 * jwt token 工具，需要根据集体业务做修改
 *
 * @author zhangchuang
 */
public class JwtUtils {

    private static final String ISS = "my_curd";        // 签发者
    private static final String SECRET = "AAAABBBCCC";   // 密钥
    private static final Long EXPIRATION_TIME_VALUE = 60L * 60 * 24 * 30; // 30 天有效期 (单位为秒)

    /**
     * 创建 jwt token, 使用默认过期时间
     *
     * @param username
     * @param roles
     * @return
     */
    public static String createToken(String username, List<String> roles) {
        return createToken(username, roles, EXPIRATION_TIME_VALUE);
    }

    /**
     * 构造Token
     *
     * @param username 用户名
     * @param roles    角色集合
     * @param expValue 多久后签名过期，单位为秒
     * @return
     */
    public static String createToken(String username, List<String> roles, Long expValue) {
        //采用HS256签名算法
        SignatureAlgorithm signatureAlgorithm = SignatureAlgorithm.HS256;
        byte[] apiKeySecretBytes = DatatypeConverter.parseBase64Binary(SECRET);
        Key signingKey = new SecretKeySpec(apiKeySecretBytes, signatureAlgorithm.getJcaName());

        //构造payload
        long nowMillis = System.currentTimeMillis();
        JSONObject payload = new JSONObject();
        payload.put("iss", ISS);                 // 签发者
        payload.put("iat", nowMillis);           // 签发时间
        payload.put("exp", nowMillis + expValue);// 过期时间
        payload.put("username", username);
        payload.put("roles", roles);

        JwtBuilder builder = Jwts.builder().setPayload(payload.toJSONString()).signWith(signatureAlgorithm, signingKey);
        return builder.compact();
    }


    /**
     * token 解析
     * ExpiredJwtException    token 过期
     * MalformedJwtException  token 错误
     * SignatureException     token 错误
     *
     * @param token token字符串
     * @return
     */
    public static UserClaim parseToken(String token) {
        //.setAllowedClockSkewSeconds(100) // 过期后 后 延后100s 内仍能解析
        Claims claims = Jwts.parser().setSigningKey(DatatypeConverter.parseBase64Binary(SECRET)).parseClaimsJws(token).getBody();
        UserClaim userClaim = new UserClaim();
        userClaim.setUsername((String) claims.get("username"));
        userClaim.setRoles((List<String>) claims.get("roles"));
        userClaim.setIss(claims.getIssuer());
        userClaim.setIat(claims.getIssuedAt());
        userClaim.setExp(claims.getExpiration());
        return userClaim;
    }

    public static void main(String[] args) {
        String username = "admin";
        List<String> roles = new ArrayList<>();
        roles.add("admin");
        roles.add("god");
        roles.add("bad_buy");
        String token = createToken(username, roles);
        System.out.println(createToken(username, roles));
        UserClaim userClaim = parseToken(token);
        System.out.println(userClaim);
    }
}
