package com.hxkj.common.util.guava;

import com.jfinal.kit.PropKit;

/**
 * 缓存实例容器
 * @author chuang
 * @date 2018/9/3
 */
public class CacheContainer {
    private static BaseCache loginRetryLimitCache = null;
    private final static  Long RETRY_TIMES =  PropKit.use("config.properties").getLong("loginRetryLimitTime");

    private CacheContainer(){}


    /**
     *  获得单例 登录错误 缓存
     * @return
     */
    public static BaseCache getLoginRetryLimitCache(){
        if(loginRetryLimitCache==null){
            synchronized (LoginRetryLimitCache.class){
                if(loginRetryLimitCache==null){
                    loginRetryLimitCache = new LoginRetryLimitCache();
                }
            }
        }
        return  loginRetryLimitCache;
    }
}
