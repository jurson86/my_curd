package com.github.qinyou.common.interceptor;

import com.github.qinyou.common.annotation.RequirePermission;
import com.github.qinyou.common.utils.StringUtils;
import com.github.qinyou.common.utils.jwt.JwtUtils;
import com.github.qinyou.common.utils.jwt.UserClaim;
import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.core.Controller;
import com.jfinal.kit.Ret;
import lombok.extern.slf4j.Slf4j;

import javax.servlet.http.HttpServletRequest;

/**
 * api 登录、授权、结果处理 拦截器
 * @author chuang
 */
@Slf4j
public class ApiInterceptor implements Interceptor {

    @Override
    public void intercept(Invocation invocation) {
        Ret ret;
        Controller controller = invocation.getController();
        HttpServletRequest req =  controller.getRequest();
        String JWTToken = req.getHeader("Authentication");
        JWTToken = JWTToken==null ? req.getParameter("token"):JWTToken;

        // 验证 token 是否存在
        if(StringUtils.isEmpty(JWTToken)){
            ret = Ret.fail().set("code","NO_TOKEN").set("message","用户没有登录");
            controller.renderJson(ret);
            return;
        }

        // 验证token 是否合法
        UserClaim userClaim;
        try{
            userClaim = JwtUtils.parseToken(JWTToken);
        }catch (Exception e){
            log.error(e.getMessage(),e);
            // 可以更细的提示信息
            ret = Ret.fail().set("code","INVALID_TOKEN").set("message","无效的TOKEN");
            controller.renderJson(ret);
            return;
        }

        // 验证用户权限
        boolean flag = true;
        RequirePermission requirePermission = controller.getClass().getAnnotation(RequirePermission.class);
        if (requirePermission != null ) {
            flag = requirePermission.isPermission() ?
                    userClaim.getPermissionList().contains(requirePermission.value())
                    : userClaim.getRoleList().contains(requirePermission.value()) ;
        }
        if(!flag){
            ret = Ret.fail().set("code","NO_PERMISSION").set("message","用户无权限");
            controller.renderJson(ret);
            return;
        }

        // token 用户信息 注入 到 方法参数中
        Object[] args = invocation.getArgs();
        for (int i=0;i<args.length;i++) {
            if (args[i] instanceof UserClaim){
                invocation.setArg(i,userClaim);
            }
            //TODO request body 注入到 controller 方法参数中
        }


        // 调用方法、请求结果封装
        try{
            invocation.invoke();
            ret = Ret.ok().set("code","0").set("data",invocation.getReturnValue());
        }catch (Exception e){
            log.error(e.getMessage(),e);
            ret = Ret.fail().set("code","500").set("message",e.getMessage());
        }

        controller.renderJson(ret);
    }
}
