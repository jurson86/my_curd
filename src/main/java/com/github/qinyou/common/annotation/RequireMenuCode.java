package com.github.qinyou.common.annotation;


import java.lang.annotation.*;

/**
 * 注解在controller class 上，控制访问权限
 */
@Documented
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
public @interface RequireMenuCode {
    String value() default "";      // 对应 sys_menu 表 menuCode
}
