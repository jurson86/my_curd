package com.hxkj.common.config;

import com.alibaba.druid.filter.stat.StatFilter;
import com.alibaba.druid.wall.WallFilter;
import com.hxkj.common.constant.Constant;
import com.hxkj.common.interceptor.AuthorityInterceptor;
import com.hxkj.system.model.SysUser;
import com.hxkj.websocket.controller.WebsocketController;
import com.hxkj.websocket.handler.WebSocketHandler;
import com.jfinal.config.*;
import com.jfinal.ext.handler.ContextPathHandler;
import com.jfinal.json.MixedJsonFactory;
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
     *
     * @param me 常量集合
     */
    @Override
    public void configConstant(Constants me) {
        PropKit.use("config.properties");
        me.setDevMode(PropKit.getBoolean("devMode"));
        me.setBaseUploadPath("upload");
        me.setMaxPostSize(10 * 1024 * 1000);  // 10M
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
     *
     * @param me 路由集合
     */
    @Override
    public void configRoute(Routes me) {
        // 管理员 权限路由
        me.add(new SysRoute());
        // 普通用户路由
        me.add(new OrdinaryUserRoute());
        // 代码生成测试
        me.add(new GentestRoute());

        // websocket 入口
        me.add("/ws", WebsocketController.class, Constant.VIEW_PATH);
    }

    /**
     * 配置 插件
     *
     * @param me 插件集合
     */
    @Override
    public void configPlugin(Plugins me) {
        // druid 数据库连接池插件
        DruidPlugin dbPlugin = new DruidPlugin(PropKit.get("jdbcUrl"), PropKit.get("user"), PropKit.get("password"));
        // druid 监控
        dbPlugin.addFilter(new StatFilter());
        WallFilter wall = new WallFilter();
        wall.setDbType("mysql");
        dbPlugin.addFilter(wall);

        // ActiveRecord 插件
        ActiveRecordPlugin arp = new ActiveRecordPlugin(dbPlugin);
        arp.setShowSql(PropKit.getBoolean("devMode"));
        arp.setDialect(new MysqlDialect());
        MappingKit.mapping(arp);
        me.add(dbPlugin);
        me.add(arp);
    }

    /**
     * 配置 jfinal interceptor
     *
     * @param me interceptor集合
     */
    @Override
    public void configInterceptor(Interceptors me) {
        // 权限拦截器
        me.addGlobalActionInterceptor(new AuthorityInterceptor());
    }

    /**
     * 配置 jfinal handler
     *
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
                SysUser user = (SysUser) request.getSession().getAttribute(Constant.SYSTEM_USER);
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
