package com.github.qinyou.common.annotation;

import java.lang.annotation.*;

/**
 * 注解在controller method 上，控制访问权限
 */
@Documented
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface RequireButtonCode {
    String value() default ""; // 对应 sys_button buttonCode 字段
}
