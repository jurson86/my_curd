package com.hxkj.common.util.guava;

import com.jfinal.kit.PropKit;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * 登录密码验证错误 缓存
 * @author chuang
 * @date 2018/9/3
 */
public class LoginRetryLimitCache extends BaseCache<String,AtomicInteger> {

    private final static  Long RETRY_TIMES =  PropKit.use("config.properties").getLong("loginRetryLimitTime");
    public LoginRetryLimitCache() {
        super(RETRY_TIMES,TimeUnit.MINUTES);
    }

    @Override
    protected AtomicInteger loadData(String s) {
        return new AtomicInteger();
    }
}
