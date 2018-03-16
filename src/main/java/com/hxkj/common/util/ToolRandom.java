package com.hxkj.common.util;

import com.jfinal.log.Log;

import java.util.Random;
import java.util.UUID;

/**
 * 随机数类
 */
public abstract class ToolRandom {

    // 定义验证码字符.去除了O、I、l、、等容易混淆的字母
    public static final char authCodeAll[] = {
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'J', 'K', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y',
            'a', 'c', 'd', 'e', 'f', 'g', 'h', 'k', 'm', 'n', 'p', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y',
            '3', '4', '5', '7', '8'};
    // 定义验证码数字
    public static final char authCodeNumber[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
    public static final int authCodeAllLength = authCodeAll.length;
    public static final int authCodeNumberLength = authCodeNumber.length;
    @SuppressWarnings("unused")
    private static final Log log = Log.getLog(ToolRandom.class);
    private static final Random random = new Random();

    /**
     * 生成验证码
     *
     * @return
     */
    public static char getAuthCodeAllChar() {
        return authCodeAll[number(0, authCodeAllLength)];
    }

    /**
     * 生成指定长度的验证码
     *
     * @param length
     * @return
     */
    public static String getAuthCodeAll(int length) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; i++) {
            sb.append(getAuthCodeAllChar());
        }
        return sb.toString();
    }

    /**
     * 生成指定长度纯数字验证码，
     *
     * @param length
     * @return
     */
    public static String getAuthCodeNumber(int length) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; i++) {
            sb.append(authCodeNumber[number(0, authCodeNumberLength)]);
        }
        return sb.toString();
    }

    /**
     * 获取UUID by jdk
     *
     * @return
     */
    public static String getUuid(boolean underline) {
        String uuid = UUID.randomUUID().toString();
        if (!underline) {
            return uuid.toString().replace("-", "");
        }
        return uuid;
    }

    /**
     * 产生两个数之间的随机数
     *
     * @param min 小数
     * @param max 比min大的数
     * @return int 随机数字
     */
    public static int number(int min, int max) {
        return min + random.nextInt(max - min);
    }

    /**
     * 产生0--number的随机数,不包括number
     *
     * @param number 数字
     * @return int 随机数字
     */
    public static int number(int number) {
        return random.nextInt(number);
    }

    /**
     * 生成RGB随机数
     *
     * @return
     */
    public static int[] getRandomRgb() {
        int[] rgb = new int[3];
        for (int i = 0; i < 3; i++) {
            rgb[i] = random.nextInt(255);
        }
        return rgb;
    }

    public static void main(String[] args) {
        int[] rgb = getRandomRgb();
        System.out.println(rgb[0] + "," + rgb[1] + "," + rgb[2]);

        System.out.println(getUuid(false));
        System.out.println(getUuid(true));
    }

}
