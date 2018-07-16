package com.hxkj.common.util;

/**
 * 生成唯一性ID算法的工具类.
 */
public class Identities {
    private static  SnowflakeIdWorker idWorker = new SnowflakeIdWorker(0, 0);
    // 18 位数字id
    public static String id() {
        return String.valueOf(idWorker.nextId());
    }
}
