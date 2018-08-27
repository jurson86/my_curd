package com.hxkj.common.util;

/**
 * 生成唯一性ID算法的工具类.
 */
public class Identities {
    private static SnowflakeIdWorker idWorker = new SnowflakeIdWorker(0, 0);

    /**
     * 18 位数字型 字符串
     *
     * @return
     */
    public static String id() {
        return String.valueOf(idWorker.nextId());
    }

    /**
     * 18 位 Long 类型
     *
     * @return
     */
    public static Long idn() {
        return idWorker.nextId();
    }
}
