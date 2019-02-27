package com.github.qinyou.system.controller;

import com.github.qinyou.common.base.BaseController;


/***
 * 通知类型 角色 关系
 */
public class SysNTRoleController extends BaseController {

    /**
     * 列表页
     */
    public void index() {
        render("system/sysNoticeType_role.ftl");
    }
}
