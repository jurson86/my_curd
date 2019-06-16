package com.github.qinyou;

import com.github.qinyou.common.config.Constant;
import com.github.qinyou.common.interceptor.PermissionInterceptor;
import com.github.qinyou.common.interceptor.SearchSql;
import com.github.qinyou.common.utils.StringUtils;
import com.github.qinyou.common.utils.WebUtils;
import com.github.qinyou.common.web.BaseController;
import com.github.qinyou.common.ws.UserIdEncryptUtils;
import com.github.qinyou.system.model.*;
import com.jfinal.aop.Before;
import com.jfinal.aop.Clear;
import com.jfinal.kit.HashKit;
import com.jfinal.kit.Ret;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;
import com.jfinal.plugin.activerecord.SqlPara;
import com.jfinal.plugin.activerecord.tx.Tx;

import java.util.*;


/**
 * 主页面
 *
 * @author zhangchuang
 */
@Clear(PermissionInterceptor.class)
public class MainController extends BaseController {

    public void index() {
        SysUser sysUser = WebUtils.getSysUser(this);
        setAttr("aesUserId", UserIdEncryptUtils.encrypt(sysUser.getId(), UserIdEncryptUtils.CURRENT_USER_ID_AESKEY));
        render("main.ftl");
    }


    /**
     * 树形菜单
     */
    public void menuTree() {
        List<SysMenu> sysMenus = getSessionAttr("sysUserMenu");

        List<Map<String, Object>> maps = new ArrayList<>();
        for (SysMenu sysMenu : sysMenus) {
            Map<String, Object> map = new HashMap<>();
            map.put("id", sysMenu.getId());
            map.put("pid", sysMenu.getPid());
            map.put("iconCls", sysMenu.getIcon());
            map.put("url", sysMenu.getUrl());
            map.put("text", sysMenu.getMenuName());
            maps.add(map);
        }
        renderJson(maps);
    }

    /**
     * 修改用户密码
     */
    public void userPass() {
        SysUser sysUser = WebUtils.getSysUser(this);
        setAttr("sysUser", sysUser);
        render("userPass.ftl");
    }

    @Before(Tx.class)
    public void changePwd() {
        String oldPwd = getPara("oldPwd");
        String newPwd = getPara("newPwd");
        String reNewPwd = getPara("reNewPwd");

        if (StringUtils.isEmpty(oldPwd)) {
            renderFail("请输入原密码");
            return;
        }
        if (StringUtils.isEmpty(newPwd)) {
            renderFail("请输入新密码");
            return;
        }
        if (!Objects.equals(newPwd, reNewPwd)) {
            renderFail("两次新密码不一致");
            return;
        }

        oldPwd = HashKit.sha1(oldPwd);
        SysUser curUser = WebUtils.getSysUser(this);
        SysUser sysUser = SysUser.dao.findByUsernameAndPassword(curUser.getUsername(), oldPwd);
        if (sysUser == null) {
            renderFail("旧密码错误");
            return;
        }
        if ("1".equals(sysUser.getUserState())) {
            renderFail("用户被禁用，无法修改密码");
            return;
        }

        newPwd = HashKit.sha1(newPwd);
        sysUser.setPassword(newPwd);
        boolean updateFlag = sysUser.update();

        if (updateFlag) {
            renderSuccess("修改密码成功");
        } else {
            renderFail("修改密码失败");
        }
    }


    /**
     * 修改用户信息
     */
    public void userInfo() {
        SysUser sysUser = WebUtils.getSysUser(this);
        setAttr("sysUser", sysUser);
        SysOrg sysOrg = SysOrg.dao.findById(sysUser.getOrgId());
        if (sysOrg != null) {
            setAttr("orgName", sysOrg.getOrgName());
        }
        render("userInfo.ftl");
    }

    public void changeUserInfo() {
        String id = getPara("userId");
        if (StringUtils.isEmpty(id)) {
            renderFail("参数错误");
            return;
        }
        SysUser sysUser = SysUser.dao.findById(id);
        if (sysUser == null) {
            renderFail("参数错误");
            return;
        }

        String avatar = getPara("avatar");
        if (StringUtils.notEmpty(avatar)) {
            sysUser.setAvatar(avatar);
        }

        String phone = getPara("phone");
        if (StringUtils.notEmpty(phone)) {
            sysUser.setPhone(phone);
        }

        String email = getPara("email");
        if (StringUtils.notEmpty(email)) {
            sysUser.setEmail(email);
        }

        String realName = getPara("realName");
        if (StringUtils.notEmpty(realName)) {
            sysUser.setRealName(realName);
        }

        String job = getPara("job");
        if (StringUtils.notEmpty(job)) {
            sysUser.setJob(job);
        }

        String gender = getPara("gender");
        if (StringUtils.notEmpty(gender)) {
            sysUser.setGender(gender);
        }

        if (sysUser.update()) {
            SysUser curUser = WebUtils.getSysUser(this);
            curUser.setRealName(sysUser.getRealName());
            curUser.setJob(sysUser.getJob());
            curUser.setGender(sysUser.getGender());
            curUser.setEmail(sysUser.getEmail());
            curUser.setPhone(sysUser.getPhone());
            curUser.setAvatar(sysUser.getAvatar());
            renderSuccess("信息修改成功");
        } else {
            renderFail("信息修改失败");
        }
    }


    /**
     * 用户通知
     */
    public void userNotice() {
        render("userNotice.ftl");
    }

    /**
     * 用户通知数据
     */
    @Before(SearchSql.class)
    public void noticeData() {
        String userId = WebUtils.getSysUser(this).getId();
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);

        if (StringUtils.notEmpty(where)) {
            where += " and receiver = '" + userId + "'";
        } else {
            where = " receiver = '" + userId + "'";
        }
        Page<SysNotice> sysNoticePage = SysNotice.dao.page(pageNumber, pageSize, where);
        renderDatagrid(sysNoticePage);
    }

    /**
     * 当前用户 单条系统通知 设置为已读
     */
    @Before(Tx.class)
    public void noticeSetRead() {
        String detailId = getPara("detailId");
        if (StringUtils.isEmpty(detailId)) {
            renderFail("detailId 参数不可为空");
            return;
        }
        SysNoticeDetail sysNoticeDetail = SysNoticeDetail.dao.findById(detailId);
        if (sysNoticeDetail == null) {
            renderFail("数据不存在");
            return;
        }
        String userId = WebUtils.getSysUser(this).getId();
        if (!userId.equals(sysNoticeDetail.getReceiver())) {
            renderFail("禁止查看他人数据");
            return;
        }
        if ("N".equals(sysNoticeDetail.getHasRead())) {
            sysNoticeDetail.setHasRead("Y");
            sysNoticeDetail.setReadTime(new Date());
            sysNoticeDetail.update();
        }
        renderSuccess("操作成功");
    }

    /**
     * 当前用户通知全部设置为已读
     */
    @Before(Tx.class)
    public void noticeSetAllRead() {
        SysUser sysUser = WebUtils.getSysUser(this);
        SqlPara sqlPara = new SqlPara();
        String sql = "update sys_notice_detail set hasRead = 'Y' , readTime = ? where receiver = ? and hasRead = 'N' ";
        sqlPara.setSql(sql).addPara(new Date()).addPara(sysUser.getId());
        Db.update(sqlPara);
        renderSuccess("设置 全部已读 操作成功");
    }

    /**
     * 获得 未读消息数量
     */
    public void noticeUnreadCount() {
        SysUser sysUser = WebUtils.getSysUser(this);
        String sql = " select count(1) as unreadCount from sys_notice_detail where receiver = ? and hasRead !='Y' ";
        Record record = Db.findFirst(sql, sysUser.getId());
        Ret ret = Ret.create().setOk().set("unreadCount", record == null ? 0 : record.get("unreadCount"));
        renderJson(ret);
    }
}
