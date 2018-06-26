package com.hxkj.common.config;

import com.hxkj.common.constant.Constant;
import com.hxkj.user.controller.UserInfoController;
import com.hxkj.user.controller.UserPasswordController;
import com.jfinal.config.Routes;

/**
 * @author chuang
 * @date 2018-06-20 18:56:48
 */
public class UserRoute  extends Routes {
    @Override
    public void config() {
        add("/userPassword", UserPasswordController.class, Constant.VIEW_PATH);
        add("/userInfo", UserInfoController.class, Constant.VIEW_PATH);
    }
}
