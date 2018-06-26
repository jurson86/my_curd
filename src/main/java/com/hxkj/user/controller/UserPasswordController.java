package com.hxkj.user.controller;

import com.hxkj.auth.model.AuthUser;
import com.hxkj.common.util.BaseController;
import com.jfinal.aop.Before;
import com.jfinal.kit.HashKit;
import com.jfinal.plugin.activerecord.tx.Tx;

public class UserPasswordController extends BaseController {

    private final static String INDEX = "user/userPass.html";

    public void index() {
        AuthUser authUser = getSessionUser();
        setAttr("authUser", authUser);
        render(INDEX);
    }

    @Before(Tx.class)
    public void changePwdAction() {
        AuthUser curUser = getSessionUser();
        String oldPassword = getPara("oldPwd");
        String newPassword = getPara("newPwd");

        oldPassword = HashKit.sha1(oldPassword);
        AuthUser authUser = AuthUser.dao.findByUsernameAndPassword(curUser.getUsername(), oldPassword);

        if (authUser == null) {
            renderText("旧密码错误！");
            return;
        }
        if (authUser.getDisabled().equals("1")) {
            renderText("用户被禁用，无法修改密码！");
            return;
        }

        newPassword = HashKit.sha1(newPassword);
        authUser.setPassword(newPassword);

        boolean updateFlag = authUser.update();
        // 添加操作日志
        addOpLog(oldPassword + " 修改为新密码：" + newPassword);

        if (updateFlag) {
            renderText("修改密码成功");
        } else {
            renderText("修改密码失败");
        }
    }
}
