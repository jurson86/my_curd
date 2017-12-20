package com.hxkj.system.controller;

import com.hxkj.common.util.BaseController;
import com.hxkj.system.model.SysUser;
import com.jfinal.aop.Before;
import com.jfinal.ext.interceptor.SessionInViewInterceptor;
import com.jfinal.kit.HashKit;
import com.jfinal.plugin.activerecord.tx.Tx;

/**
 * 修改密码
 */
public class SysChangePasswordController extends BaseController {

    @Before(SessionInViewInterceptor.class)
    public void index() {
        render("system/sysChangePwd.html");
    }

    @Before(Tx.class)
    public void changePwdAction() {
        SysUser curUser = getSessionUser();
        String oldPassword = getPara("oldPwd");
        String newPassword = getPara("newPwd");

        oldPassword = HashKit.sha1(oldPassword);
        SysUser sysUser = SysUser.dao.findByUsernameAndPassword(curUser.getUsername(), oldPassword);

        if (sysUser == null) {
            renderText("旧密码错误！");
            return;
        }
        if (sysUser.getDisabled().equals("1")) {
            renderText("用户被禁用，无法修改密码！");
            return;
        }

        newPassword = HashKit.sha1(newPassword);
        sysUser.setPassword(newPassword);

        boolean updateFlag = sysUser.update();
        // 添加操作日志
        addOpLog(oldPassword + " 修改为新密码：" + newPassword);

        if (updateFlag) {
            renderText("修改密码成功");
        } else {
            renderText("修改密码失败");
        }

    }
}
