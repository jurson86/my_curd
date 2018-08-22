package com.hxkj.common.controller;

import com.hxkj.auth.model.AuthUser;
import com.jfinal.aop.Clear;
import com.jfinal.kit.StrKit;

@Clear
public class UserInfoController extends BaseController {
    private final static String INDEX = "common/userInfo.html";

    public void index() {
        AuthUser authUser = getSessionUser();
        setAttr("authUser", authUser);
        render(INDEX);
    }

    public void editInfoAction() {
        String id = getPara("userId");
        if (StrKit.isBlank(id)) {
            renderText("参数错误");
            return;
        }
        AuthUser sysUser = AuthUser.dao.findById(id);
        if (sysUser == null) {
            renderText("参数错误");
            return;
        }

        // set 会触发 生成 sql 语句
        sysUser.setPhone(getPara("phone"));
        sysUser.setEmail(getPara("email"));
        sysUser.setName(getPara("name"));

        boolean flag = sysUser.update();
        if (flag) {
            AuthUser authUser = getSessionUser();
            authUser.setName(sysUser.getName());
            authUser.setEmail(sysUser.getEmail());
            authUser.setPhone(sysUser.getPhone());
            renderText("信息修改成功");
        } else {
            renderText("信息修改失败");
        }
    }
}
