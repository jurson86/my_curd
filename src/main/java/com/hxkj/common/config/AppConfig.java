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
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.activerecord.dialect.MysqlDialect;
import com.jfinal.plugin.druid.DruidPlugin;
import com.jfinal.plugin.druid.DruidStatViewHandler;
import com.jfinal.plugin.druid.IDruidStatViewAuth;
import com.jfinal.render.ViewType;
import com.jfinal.template.Engine;

import javax.servlet.http.HttpServletRequest;

public class AppConfig extends JFinalConfig {

    public static void main(String[] args) {
        //JFinal.start("WebRoot", 80, "/");
    }

    /**
     * 配置JFinal常量
     */
    @Override
    public void configConstant(Constants me) {
        PropKit.use("config.properties");
        me.setDevMode(PropKit.getBoolean("devMode"));
        me.setBaseUploadPath("upload/temp/");
        me.setMaxPostSize(1024 * 1024 * 1000);
        me.setBaseDownloadPath("download");
        me.setViewType(ViewType.FREE_MARKER);


        //设置404渲染视图
        //me.setError404View();
        //设置json工厂
        //me.setJsonFactory(FastJsonFactory.me());  // json 驼峰，但是 record 等不能正常转换
        // json日期格式
        me.setJsonDatePattern("yyyy-MM-dd HH:mm:ss");
    }

    @Override
    public void configRoute(Routes me) {
        me.add(new SysRoute());     // system 模块 路由
        me.add(new GentestRoute()); // 代码生成测试 模块 路由
        me.add(new ReadRoute());    // 阅读路由

        // websocket 入口
        me.add("/ws", WebsocketController.class, Constant.VIEW_PATH);
    }

    @Override
    public void configPlugin(Plugins me) {
        DruidPlugin dbPlugin = new DruidPlugin(PropKit.get("jdbcUrl"), PropKit.get("user"), PropKit.get("password"));
        // druid 监控
        dbPlugin.addFilter(new StatFilter());
        WallFilter wall = new WallFilter();
        wall.setDbType("mysql");
        dbPlugin.addFilter(wall);

        ActiveRecordPlugin arp = new ActiveRecordPlugin(dbPlugin);
        arp.setShowSql(PropKit.getBoolean("devMode"));
        arp.setDialect(new MysqlDialect());
        MappingKit.mapping(arp);
        me.add(dbPlugin);
        me.add(arp);
    }

    @Override
    public void configInterceptor(Interceptors me) {
        me.addGlobalActionInterceptor(new AuthorityInterceptor());
    }

    @Override
    public void configHandler(Handlers me) {

        // 处理 websocket 请求
        me.add(new WebSocketHandler("^/websocket"));

        // 视图中添加应用contenxt
        me.add(new ContextPathHandler("ctx"));

        // druid 监控（只允许admin查看）
        DruidStatViewHandler dvh = new DruidStatViewHandler("/druid", new IDruidStatViewAuth() {
            public boolean isPermitted(HttpServletRequest request) {
                // 这里只是简单的判断访问者是否登录，还可以做更加细致的权限控制
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
