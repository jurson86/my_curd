package com.hxkj.common.util;


import org.apache.log4j.Logger;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

/**
 * 反射工具类
 * public 类 可通过 反射
 * 1. 调用 公有方法（继承的和自己定义的） 和 自己定义的所有方法（公有私有的)
 * 2. 获得字段值，设置字段值
 * @author zhangchuang
 * @date 2018-10-31
 */
public class ReflectionUtils {
    private final static Logger LOG = Logger.getLogger(ReflectionUtils.class);

    /**
     * 运行方法
     * @param instance    实例
     * @param methodName  方法名
     * @param args        方法参数
     * @return            方法返回值, 方法无返回值 返回值为 null
     * @throws Exception  如方法运行失败，抛出异常
     */
    public static  Object runMethod(Object instance,String methodName,Object... args) throws Exception {
        // 查找方法
        Class classObj = instance.getClass();
        Method method=null;
        try {
            //noinspection unchecked
            method = classObj.getMethod(methodName);
        } catch (NoSuchMethodException e) {
        }

        if(method==null){
            try {
                //noinspection unchecked
                method = classObj.getDeclaredMethod(methodName);
            } catch (NoSuchMethodException e) {
            }
        }

        if(method==null){
            throw new Exception(methodName+" 方法 找不到 或者 无法调用 ");
        }
        method.setAccessible(true);
        return method.invoke(instance,args);
    }


    /**
     * 运行方法
     * @param className  类全名
     * @param methodName 方法名
     * @param args       方法参数
     * @return           方法返回值, 方法无返回值 返回值为 null
     * @throws Exception 如方法运行失败，抛出异常
     */
    public static Object runMethod(String className,String methodName,Object... args) throws Exception {
        // 类找不到此处异常
        Class classObj = Class.forName(className);
        // 类不是 public 此处异常
        Object instance = classObj.newInstance();
        // 方法无法正常运行  此处异常
        return  runMethod(instance,methodName,args);
    }


    /**
     * 返回 对象字段值
     * @param instance  对象实例
     * @param fieldName 字段名字
     * @return
     * @throws Exception 不可访问放生异常
     */
    public static  Object getFieldValue(Object instance,String fieldName) throws Exception {
        Field field = null;
        try {
            field =instance.getClass().getField(fieldName);
        } catch (NoSuchFieldException e) {
        }
        if(field==null){
            try {
                field =instance.getClass().getDeclaredField(fieldName);
            } catch (NoSuchFieldException e) {
            }
        }
        if(field==null){
            throw new Exception(fieldName+" 字段 找不到 或者 无法调用 ");
        }
        field.setAccessible(true);

        return field.get(instance);
    }


    /**
     * 设置字段值
     * @param instance
     * @param fieldName
     * @param fieldValue
     * @throws Exception
     */
    public static void setFieldValue(Object instance,String fieldName,Object fieldValue) throws Exception {
        Field field = null;
        try {
            field =instance.getClass().getField(fieldName);
        } catch (NoSuchFieldException e) {
        }
        if(field==null){
            try {
                field =instance.getClass().getDeclaredField(fieldName);
            } catch (NoSuchFieldException e) {
            }
        }
        if(field==null){
            throw new Exception(fieldName+" 字段 找不到 或者 无法调用 ");
        }
        field.setAccessible(true);

        field.set(instance,fieldValue);
    }
}
