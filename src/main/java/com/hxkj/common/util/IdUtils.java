package com.hxkj.common.util;

import org.apache.commons.lang3.RandomStringUtils;

import java.util.UUID;

public class IdUtils
{

    /*12 位字符混合，理论上仍可能重复*/
    public static String createId()
    {
        String id = UUID.randomUUID().toString();

        id = DEKHash(id) + "";

        int diff = 12 - id.length();
        String randStr = RandomStringUtils.randomAlphabetic(12);
        for (int i = 0; i < diff; i++)
        {
            int randIndex = (int) (Math.random() * randStr.length());
            int index = (int) (Math.random() * id.length());
            id = id.substring(0, index) + randStr.charAt(randIndex) + id.substring(index, id.length());
        }
        return id;
    }

    private static int DEKHash(String str)
    {
        int hash = str.length();

        for (int i = 0; i < str.length(); i++)
        {
            hash = ((hash << 5) ^ (hash >> 27)) ^ str.charAt(i);
        }

        return (hash & 0x7FFFFFFF);
    }

    public static void main(String[] args) {
        System.out.println(createId());
    }
}
