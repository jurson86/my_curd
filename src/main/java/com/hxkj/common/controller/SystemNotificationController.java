package com.hxkj.common.controller;


import com.hxkj.auth.model.AuthUser;
import com.hxkj.common.constant.Constant;
import com.hxkj.common.interceptor.PermissionInterceptor;
import com.hxkj.common.util.search.SearchSql;
import com.hxkj.sys.model.SysNotification;
import com.hxkj.sys.model.SysNotificationDetail;
import com.jfinal.aop.Before;
import com.jfinal.aop.Clear;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;
import com.jfinal.plugin.activerecord.SqlPara;
import com.jfinal.plugin.activerecord.tx.Tx;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * 系统后台通知列表
 *
 * @author chuang
 */

@Clear(PermissionInterceptor.class)
public class SystemNotificationController extends BaseController {

    /**
     * 系统通知列表页
     */
    public void index() {
        render("common/systemNotification.html");
    }

    /**
     * 系统通知数据
     */
    @Before(SearchSql.class)
    public void notificationData() {
        AuthUser authUser = getSessionUser();
        Long userId = authUser.getId();

        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);

        // 通知接收人  通知分类
        if (StrKit.notBlank(where)) {
            where += (" and e.category='SYSTEM' and  b.receiver = " + userId);
        } else {
            where = " e.category='SYSTEM' and  b.receiver = " + userId;
        }
        Page<Record> recordPage = SysNotification.dao.findNotificationWithDetailPage(pageNumber, pageSize, where);
        renderDatagrid(recordPage);
    }


    /**
     * 当前用户 单条系统通知 设置为已读
     * 前台点击消息时发送ajax请求，但是不做响应提示
     */
    @Before(Tx.class)
    public void notificationSetRead() {
        Map<String, Object> ret = new HashMap<>();
        String detailId = getPara("detailId");
        if (StrKit.isBlank(detailId)) {
            ret.put("state", false);
            ret.put("msg", "detailId 参数不可为空");
            renderJson(ret);
            return;
        }

        SysNotificationDetail sysNotificationDetail = SysNotificationDetail.dao.findById(detailId);
        if (sysNotificationDetail == null) {
            ret.put("state", false);
            ret.put("msg", "数据不存在");
            renderJson(ret);
            return;
        }

        AuthUser authUser = getSessionUser();
        if (authUser.getId() != sysNotificationDetail.getReceiver()) {
            ret.put("state", false);
            ret.put("msg", "禁止查看他人数据");
            renderJson(ret);

            // 添加操作日志
            // 不为空
            AuthUser receiverUser = AuthUser.dao.findById(sysNotificationDetail.getReceiver());
            addOpLog("用户 " + authUser.getUsername() + " 非法查看 用户 " + receiverUser.getUsername() + " 的系统通知");
            return;
        }


        if ("0".equals(sysNotificationDetail.getIsRead())) {
            sysNotificationDetail.setIsRead("1");
            sysNotificationDetail.setReadTime(new Date());
            sysNotificationDetail.update();
        }

        ret.put("state", true);
        renderJson(ret);
    }


    /**
     * 当前用户通知全部设置为已读
     */
    @Before(Tx.class)
    public void notificationSetAllRead() {
        Map<String, Object> ret = new HashMap<>();
        AuthUser authUser = getSessionUser();
        SqlPara sqlPara = new SqlPara();
        String sql = "update sys_notification_detail set is_read = '1' , read_time = ? where receiver = ?  ";
        sqlPara.setSql(sql).addPara(new Date()).addPara(authUser.getId());
        Db.update(sqlPara);

        addOpLog("用户 " + authUser.getUsername() + " 设置所有系统通知为 已读");
        ret.put("state", true);
        ret.put("msg", "设置 全部已读 操作成功");
        renderJson(ret);
    }


    /**
     * 获得 未读消息数量
     */
    public void getUnreadCount() {
        Map<String, Object> ret = new HashMap<>();
        AuthUser authUser = getSessionUser();
        // 未读消息数量
        String sql = " select count(main_id) as unread_count from sys_notification_detail where receiver = ? and is_read = '0' ";
        Record record = Db.findFirst(sql, authUser.getId());
        ret.put("state", true);
        ret.put("unreadCount", record == null ? 0 : record.get("unread_count"));
        renderJson(ret);
    }

}
