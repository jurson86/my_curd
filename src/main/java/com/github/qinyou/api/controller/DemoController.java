package com.github.qinyou.api.controller;

import com.github.qinyou.common.interceptor.ApiInterceptor;
import com.github.qinyou.common.utils.jwt.UserClaim;
import com.jfinal.aop.Before;
import com.jfinal.aop.Clear;
import com.jfinal.core.Controller;

@Clear
@Before(ApiInterceptor.class)
public class DemoController extends Controller {
    // 接口
    public UserClaim index(UserClaim userClaim){
        return userClaim;
    }
}
