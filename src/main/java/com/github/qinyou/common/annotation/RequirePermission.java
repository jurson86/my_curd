package com.github.qinyou.common.annotation;

import java.lang.annotation.*;

@Documented
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface RequirePermission {
    String value() default "";                 // 权限编码 （本项目中为按钮编码)
}
