package com.github.qinyou.system.controller;

import com.github.qinyou.common.base.BaseController;
import com.github.qinyou.common.config.Constant;
import com.github.qinyou.common.interceptor.SearchSql;
import com.github.qinyou.common.utils.Id.IdUtils;
import com.github.qinyou.common.utils.StringUtils;
import com.github.qinyou.common.utils.WebUtils;
import com.github.qinyou.common.validator.IdsRequired;
import com.github.qinyou.system.model.SysNoticeType;
import com.jfinal.aop.Before;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;

import java.util.Date;

public class SysNoticeTypeController extends BaseController {
    public void index() {
        render("system/sysNoticeType.ftl");
    }


    @Before(SearchSql.class)
    public void query() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);
        Page<SysNoticeType> sysNoticeTypePage = SysNoticeType.dao.page(pageNumber, pageSize, where);
        renderDatagrid(sysNoticeTypePage);
    }

    public void newModel() {
        String id = getPara("id");
        if (StringUtils.notEmpty(id)) {
            SysNoticeType sysNoticeType = SysNoticeType.dao.findById(id);
            setAttr("sysNoticeType", sysNoticeType);
        }
        render("system/sysNoticeType_form.ftl");
    }

    public void addAction() {
        SysNoticeType sysNoticeType = getBean(SysNoticeType.class, "");
        sysNoticeType.setId(IdUtils.id());
        sysNoticeType.setCreater(WebUtils.getSessionUsername(this)).setCreateTime(new Date());
        if (sysNoticeType.save()) {
            renderSuccess(Constant.ADD_SUCCESS);
        } else {
            renderFail(Constant.ADD_FAIL);
        }
    }


    public void updateAction() {
        SysNoticeType sysNoticeType = getBean(SysNoticeType.class, "");
        sysNoticeType.setUpdater(WebUtils.getSessionUsername(this)).setUpdateTime(new Date());
        if (sysNoticeType.update()) {
            renderSuccess(Constant.UPDATE_SUCCESS);
        } else {
            renderFail(Constant.UPDATE_FAIL);
        }
    }


    @Before(IdsRequired.class)
    public void deleteAction() {
        String ids = getPara("ids").replaceAll(",", "','");
        Db.tx(() -> {
            String sql = "delete from sys_notice_type where id in ('" + ids + "')";
            Db.update(sql);
            sql = "delete from sys_notice_type_sys_role where sysNoticeTypeId in ('" + ids + "')";
            Db.update(sql);
            // 删除通知消息表
            sql = "delete from sys_notice_detail where sysNoticeId in (select id from sys_notice where typeCode in (select typeCode from sys_notice_type where id in ('" + ids + "')))";
            Db.update(sql);
            sql = "delete from sys_notice where typeCode in (select typeCode from sys_notice_type where id in ('" + ids + "'))";
            Db.update(sql);
            return true;
        });
        renderSuccess(Constant.DELETE_SUCCESS);
    }
}
