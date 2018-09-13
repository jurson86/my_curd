package com.hxkj.common.util;

import com.jfinal.kit.AesKit;
/**
 * @author chuang
 * @date 2018/9/3
 */
public class Main {
    public static void main(String[] args) {
        String aesKey = "tFWpij4I9ZP_YIfoEwyrO8kgGhTNKJSi";
        System.out.println("aes key : "+aesKey);
        String txt = "1";
        byte[] txtAry  = AesKit.encrypt(txt,aesKey);

        String txthex = StringUtils.bytesToHexString(txtAry);
        System.out.println(txthex);
        System.out.println(AesKit.decryptToStr("1fdfsdfsdfsdf".getBytes(),aesKey));
    }
}
