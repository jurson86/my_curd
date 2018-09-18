package com.hxkj.sys.controller;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.controller.BaseController;
import com.hxkj.common.interceptor.PermissionInterceptor;
import com.hxkj.common.util.Identities;
import com.hxkj.common.util.search.SearchSql;
import com.hxkj.sys.model.SysNotificationType;
import com.jfinal.aop.Before;
import com.jfinal.aop.Clear;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.tx.Tx;

/**
 * sys_notification_type 控制器
 *
 * @author
 * @date 2018-09-17 19:18:07
 */
public class SysNotificationTypeController extends BaseController {

    /**
     * 列表页
     */
    public void index() {
        render("sys/sysNotificationType.html");
    }


    /**
     * 通知类型 datagrid 数据
     */
    // 去掉权限拦截器，因此接口被其它页面使用，且接口数据安全
    @Clear(PermissionInterceptor.class)
    @Before(SearchSql.class)
    public void query() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);
        Page<SysNotificationType> sysNotificationTypePage = SysNotificationType.dao.page(pageNumber, pageSize, where);
        renderDatagrid(sysNotificationTypePage);
    }


    /**
     * 打开新增或者修改弹出框
     */
    public void newModel() {
        // 有且只有一个主键，且主键类型为 字符串，否则需要手动修改
        String id = getPara("id");
        if (StrKit.notBlank(id)) {
            SysNotificationType sysNotificationType = SysNotificationType.dao.findById(id);
            setAttr("sysNotificationType", sysNotificationType);
        }
        render("sys/sysNotificationType_form.html");
    }


    /**
     * 增加
     */
    public void addAction() {
        SysNotificationType sysNotificationType = getBean(SysNotificationType.class, "");
        sysNotificationType.set("id", Identities.id());
        boolean saveFlag = sysNotificationType.save();
        if (saveFlag) {
            renderText(Constant.ADD_SUCCESS);
        } else {
            renderText(Constant.ADD_FAIL);
        }
    }

    /**
     * 删除
     */
    @Before(Tx.class)
    public void deleteAction() {
        String ids = getPara("ids");
        String deleteSql;
        if (ids.contains(",")) {
            ids = ids.replaceAll(",", "','");

            // 删除选中的数据
            deleteSql = "delete from sys_notification_type where id  in ( '" + ids + "' ) ";
            Db.update(deleteSql);
        } else {
            SysNotificationType.dao.deleteById(ids);
        }

        // 删除关联的数据
        deleteSql = "delete from sys_notification_type_role where notification_type_id in ('" + ids + "') ";
        Db.update(deleteSql);

        // 删除关联的数据
        deleteSql = "delete from sys_notification_type_user where notification_type_id in ('" + ids + "') ";
        Db.update(deleteSql);

        renderText(Constant.DELETE_SUCCESS);
    }

    /**
     * 修改
     */
    public void updateAction() {
        SysNotificationType sysNotificationType = getBean(SysNotificationType.class, "");
        boolean updateFlag = sysNotificationType.update();
        if (updateFlag) {
            renderText(Constant.UPDATE_SUCCESS);
        } else {
            renderText(Constant.UPDATE_FAIL);
        }
    }
}
