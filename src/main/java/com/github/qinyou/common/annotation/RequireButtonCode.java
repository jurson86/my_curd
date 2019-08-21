package com.github.qinyou.common.annotation;

import java.lang.annotation.*;

/**
 * 当前用户必须拥有某按钮权限，注解在controller method 上
 * @author chuang
 */
@Documented
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface RequireButtonCode {
    String value() default ""; // 对应 sys_button buttonCode 字段
}
