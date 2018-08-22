package com.hxkj.common.config;

import com.alibaba.druid.filter.stat.StatFilter;
import com.alibaba.druid.wall.WallFilter;
import com.hxkj.auth.model.AuthUser;
import com.hxkj.common.constant.Constant;
import com.hxkj.common.interceptor.LoginInterceptor;
import com.hxkj.common.interceptor.PermissionInterceptor;
import com.hxkj.websocket.controller.WebsocketController;
import com.hxkj.websocket.handler.WebSocketHandler;
import com.jfinal.config.*;
import com.jfinal.ext.handler.ContextPathHandler;
import com.jfinal.json.MixedJsonFactory;
import com.jfinal.kit.Prop;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.activerecord.dialect.MysqlDialect;
import com.jfinal.plugin.druid.DruidPlugin;
import com.jfinal.plugin.druid.DruidStatViewHandler;
import com.jfinal.plugin.druid.IDruidStatViewAuth;
import com.jfinal.render.ViewType;
import com.jfinal.template.Engine;

import javax.servlet.http.HttpServletRequest;

/**
 * Jfinal框架 配置
 *
 * @author zhangcuang
 */
public class AppConfig extends JFinalConfig {

    /**
     * 配置JFinal常量
     * @param me 常量集合
     */
    @Override
    public void configConstant(Constants me) {
        Prop configProp = PropKit.use("config.properties");
        me.setDevMode(configProp.getBoolean("devMode"));

        me.setBaseUploadPath("upload");
        me.setMaxPostSize(10 * 1024 * 1000); // 10M
        me.setBaseDownloadPath("download");

        me.setViewType(ViewType.FREE_MARKER);
        me.setError403View(Constant.VIEW_PATH + "common/403.html");
        me.setError404View(Constant.VIEW_PATH + "common/404.html");
        me.setError500View(Constant.VIEW_PATH + "common/500.html");

        // jfinaljson 和 fastjson 混合
        me.setJsonFactory(MixedJsonFactory.me());
        me.setJsonDatePattern("yyyy-MM-dd HH:mm:ss");
    }


    /**
     * 配置JFinal路由
     * @param me 路由集合
     */
    @Override
    public void configRoute(Routes me) {
        // 权限管理
        me.add(new AuthRoute());
        // 基础数据
        me.add(new DataRoute());
        // 系统管理
        me.add(new SysRoute());

        // 公共的，不需要权限控制的路由
        me.add(new CommonRoute());

        // 玩
        me.add(new PlayRoute());
        // cms 管理
        me.add(new cmsRoute());
        // websocket 入口
        me.add("/ws", WebsocketController.class, Constant.VIEW_PATH);
    }

    /**
     * 配置 插件
     * @param me 插件集合
     */
    @Override
    public void configPlugin(Plugins me) {
        Prop configProp = PropKit.use("config.properties");
        Prop databaseProp = PropKit.use("database.properties");

        // my_curd 框架 数据源
        DruidPlugin baseDruidPlugin = new DruidPlugin(databaseProp.get("base.jdbcUrl"), databaseProp.get("base.user"), databaseProp.get("base.password"));
        // ... 更多的 数据源配置
        baseDruidPlugin.addFilter(new StatFilter());
        WallFilter wall = new WallFilter();
        wall.setDbType(databaseProp.get("base.dbType"));
        baseDruidPlugin.addFilter(wall);
        me.add(baseDruidPlugin);
        ActiveRecordPlugin baseArp = new ActiveRecordPlugin("mysql_base",baseDruidPlugin);
        baseArp.setShowSql(configProp.getBoolean("devMode"));
        baseArp.setDialect(new MysqlDialect());
        MappingKit.mapping(baseArp);
        me.add(baseArp);

        // 业务数据源
        DruidPlugin businessDruidPlugin = new DruidPlugin(databaseProp.get("business.jdbcUrl"), databaseProp.get("business.user"), databaseProp.get("business.password"));
        // ... 更多的 数据源配置
        businessDruidPlugin.addFilter(new StatFilter());
        WallFilter businessWallFilter = new WallFilter();
        businessWallFilter.setDbType(databaseProp.get("business.dbType"));
        businessDruidPlugin.addFilter(businessWallFilter);
        me.add(businessDruidPlugin);
        ActiveRecordPlugin businessArp = new ActiveRecordPlugin("mysql_business",businessDruidPlugin);
        businessArp.setShowSql(configProp.getBoolean("devMode"));
        businessArp.setDialect(new MysqlDialect());
        me.add(businessArp);
    }

    /**
     * 配置 jfinal interceptor
     * @param me interceptor集合
     */
    @Override
    public void configInterceptor(Interceptors me) {
        // 登录拦截器
        me.addGlobalActionInterceptor(new LoginInterceptor());
        // 权限拦截器
        me.addGlobalActionInterceptor(new PermissionInterceptor());
    }

    /**
     * 配置 jfinal handler
     * @param me handler集合
     */
    @Override
    public void configHandler(Handlers me) {
        // 处理 websocket 请求
        me.add(new WebSocketHandler("^/websocket"));
        // 视图中添加应用contenxt
        me.add(new ContextPathHandler("ctx"));
        // druid 监控（只允许admin查看）
        DruidStatViewHandler dvh = new DruidStatViewHandler("/druid", new IDruidStatViewAuth() {
            public boolean isPermitted(HttpServletRequest request) {
                AuthUser user = (AuthUser) request.getSession().getAttribute(Constant.AUTH_USER);
                if (user == null) {
                    return false;
                }
                return "admin".equals(user.getUsername());
            }
        });
        me.add(dvh);
    }

    @Override
    public void afterJFinalStart() {
    }

    @Override
    public void beforeJFinalStop() {
    }

    @Override
    public void configEngine(Engine me) {
    }
}
