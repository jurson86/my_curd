package com.hxkj.common.interceptor;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.core.Controller;
import com.jfinal.kit.HttpKit;

/**
 * 读取 post 请求 body json 对象
 * 用作手机端等数据接口（不可用 ajax datatype:'json")
 */
public class ReadJsonInterceptor implements Interceptor {
    @Override
    public void intercept(Invocation inv) {
        Controller c = inv.getController();
        String jsonStr = HttpKit.readData(c.getRequest());
        System.out.println(jsonStr);
        JSONObject jsonObject = JSON.parseObject(jsonStr);
        c.setAttr("pdata", jsonObject);
        inv.invoke();
    }
}
