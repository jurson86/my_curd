package com.hxkj.system.controller;

import com.hxkj.common.util.BaseController;
import com.hxkj.system.model.SysUser;
import com.jfinal.aop.Before;
import com.jfinal.ext.interceptor.SessionInViewInterceptor;
import com.jfinal.kit.HashKit;

/**
 * Created by Administrator on 2017/11/21.
 */
public class SysChangePasswordController extends BaseController {


    @Before(SessionInViewInterceptor.class)
    public void index(){
        render( "system/sysChangePwd.html");
    }

    public  void changePwdAction(){
        SysUser sysUser =  getSessionUser();
        String oldPassword = getPara("oldPwd");
        String newPassword = getPara("newPwd");
        String sql = "select * from sys_user where username = ? and password = ?";
        oldPassword = HashKit.sha1(oldPassword);
        SysUser sSysUser = SysUser.dao.findFirst(sql,sysUser.getUsername(),oldPassword);

        if(sSysUser==null){
            renderText("旧密码错误！");
            return ;
        }

        if(sysUser.getDisabled().equals("1")){
            renderText("用户被禁用，无法修改密码！");
            return ;
        }

        newPassword = HashKit.sha1(newPassword);
        sSysUser.setPassword(newPassword);

        boolean updateFlag  = sSysUser.update();
        if(updateFlag){
            renderText("修改密码成功");
        }else{
            renderText("修改密码失败");
        }

    }
}
