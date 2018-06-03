package com.hxkj.ordinaryUser.controller;

import com.hxkj.common.util.BaseController;
import com.hxkj.system.model.SysUser;
import com.jfinal.kit.StrKit;

public class UserInfoController extends BaseController {
    private final static String INDEX = "ordinaryUser/userInfo.html";

    public void index() {
        SysUser sysUser = getSessionUser();
        setAttr("sysUser", sysUser);
        render(INDEX);
    }

    public void changeInfoAction() {
        String id = getPara("userId");
        if (StrKit.isBlank(id)) {
            renderText("参数错误");
            return;
        }
        SysUser sysUser = SysUser.dao.findById(id);
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
            SysUser loginUser = getSessionUser();
            loginUser.setName(sysUser.getName());
            loginUser.setEmail(sysUser.getEmail());
            loginUser.setPhone(sysUser.getPhone());
            renderText("信息修改成功");
        } else {
            renderText("信息修改失败");
        }
    }
}
