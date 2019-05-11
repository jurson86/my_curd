package com.github.qinyou.common.utils;

import com.github.qinyou.common.base.BaseController;
import com.github.qinyou.common.config.Constant;
import com.github.qinyou.common.interceptor.PermissionInterceptor;
import com.github.qinyou.common.interceptor.SearchSql;
import com.github.qinyou.system.model.SysOrg;
import com.github.qinyou.system.model.SysRole;
import com.github.qinyou.system.model.SysUser;
import com.jfinal.aop.Before;
import com.jfinal.aop.Clear;
import com.jfinal.kit.Prop;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.Page;

/**
 * 工具controller
 */
@SuppressWarnings("Duplicates")
@Clear(PermissionInterceptor.class)
public class UtilsController extends BaseController {
    /**
     * 上传文件
     */
    private final static Prop prop = PropKit.use("file.properties");

    /**
     * 生成 图像验证码
     */
    public void captcha() {
        renderCaptcha();
    }


    /**
     * 生成 二维码
     */
    public void qrcode() {
        String content = getPara("txt", "my_curd very great");
        Integer width = getParaToInt("width", 200);
        Integer height = getParaToInt("height", 200);
        renderQrCode(content, width, height);
    }


    /**
     * 系统用户信息
     */
    public void userInfo() {
        String username = getPara("username");
        if (StringUtils.notEmpty(username)) {
            SysUser sysUser = SysUser.dao.findInfoByUsername(username);
            setAttr("sysUser", sysUser);
        }
        setAttr("username", username);

        render("common/utils/userInfo.ftl");
    }

    /**
     * 组织机构信息
     */
    public void orgInfo() {
        String orgId = getPara("id");
        if (StringUtils.notEmpty(orgId)) {
            SysOrg sysOrg = SysOrg.dao.findById(orgId);
            setAttr("sysOrg", sysOrg);
        }
        setAttr("orgId", orgId);
        render("common/utils/orgInfo.ftl");
    }

    /**
     * 角色选择
     */
    public void role() {
        String singleSelect = getPara("singleSelect", "false");
        setAttr("singleSelect", singleSelect);
        setAttr("yesBtnTxt", getPara("yesBtnTxt", "添加角色"));
        render("common/utils/role.ftl");
    }

    /**
     * 角色选择 数据
     */
    @SuppressWarnings("Duplicates")
    @Before(SearchSql.class)
    public void queryRole() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);
        Page<SysRole> sysRolePage = SysRole.dao.page(pageNumber, pageSize, where);
        renderDatagrid(sysRolePage);
    }

    /**
     * 用户选择
     */
    public void user() {
        String singleSelect = getPara("singleSelect", "false");
        setAttr("singleSelect", singleSelect);
        setAttr("yesBtnTxt", getPara("yesBtnTxt", "添加用户"));
        render("common/utils/user.ftl");
    }

    /**
     * 用户选择 数据
     */
    @Before(SearchSql.class)
    public void queryUser() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);
        Page<SysUser> sysUserPage = SysUser.dao.page(pageNumber, pageSize, where);
        renderDatagrid(sysUserPage);
    }

    /**
     * 跳转到上传文件页面, 文件excel导入等 使用
     */
    public void goUploadFilePage() {
        String uploadUrl = getPara("uploadUrl");
        String label = getPara("label");
        if (StringUtils.isEmpty(uploadUrl)) {
            setAttr("msg", "uploadUrl参数不可为空");
            render("common/card.ftl");
            return;
        }
        setAttr("uploadUrl", uploadUrl);
        setAttr("label", label);
        render("common/utils/uploadFile.ftl");
    }
}
