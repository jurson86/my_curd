package com.github.qinyou.common.annotation;


import java.lang.annotation.*;

/**
 * 当前用户必须具有某菜单权限，注解在controller class 上
 * @author chuang
 */
@Documented
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
public @interface RequireMenuCode {
    String value() default "";      // 对应 sys_menu 表 menuCode
}
