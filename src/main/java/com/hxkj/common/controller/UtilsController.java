package com.hxkj.common.controller;


import com.hxkj.auth.model.AuthRole;
import com.hxkj.auth.model.AuthUser;
import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.search.SearchSql;
import com.jfinal.aop.Before;
import com.jfinal.aop.Clear;
import com.jfinal.plugin.activerecord.Page;

/**
 * 通用的工具页面
 */
@Clear
public class UtilsController extends BaseController {


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
        // 参数 content-width-height
        String content = getPara(0, "验证码测试");
        Integer width = getParaToInt(1, 200);
        Integer height = getParaToInt(2, 200);
        renderQrCode(content, width, height);
    }


    /**
     * 角色选择
     */
    public void role() {
        String singleSelect = getPara("singleSelect", "false");
        setAttr("singleSelect", singleSelect);
        setAttr("yesBtnTxt", getPara("yesBtnTxt", "确定操作"));
        render("common/utils/role.html");
    }

    @Before(SearchSql.class)
    public void roleData() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);
        Page<AuthRole> authMenus = AuthRole.dao.page(pageNumber, pageSize, where);
        renderDatagrid(authMenus);
    }


    /**
     * 用户选择
     */
    public void user() {
        String singleSelect = getPara("singleSelect", "false");
        setAttr("singleSelect", singleSelect);
        setAttr("yesBtnTxt", getPara("yesBtnTxt", "确定操作"));
        render("common/utils/user.html");
    }

    /**
     * 用户 选择数据
     */
    @Before(SearchSql.class)
    public void userData() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String sort = getPara("sort");
        String order = getPara("order");
        String where = getAttr(Constant.SEARCH_SQL);
        Page<AuthUser> authUsers = AuthUser.dao.page(pageNumber, pageSize, sort, order, where);
        renderDatagrid(authUsers);
    }

}
