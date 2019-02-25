package com.github.qinyou.common.config;

import com.alibaba.druid.filter.stat.StatFilter;
import com.alibaba.druid.wall.WallFilter;
import com.github.qinyou.LoginController;
import com.github.qinyou.MainController;
import com.github.qinyou.common.interceptor.ExceptionInterceptor;
import com.github.qinyou.common.interceptor.LoginInterceptor;
import com.github.qinyou.common.interceptor.PermissionInterceptor;
import com.github.qinyou.common.interceptor.UserSetttingInterceptor;
import com.github.qinyou.common.log.LogBackLogFactory;
import com.github.qinyou.common.utils.UtilsController;
import com.github.qinyou.example.ExampleModelMapping;
import com.github.qinyou.example.ExampleRoute;
import com.github.qinyou.system.SystemModelMapping;
import com.github.qinyou.system.SystemRoute;
import com.github.qinyou.system.model.SysUser;
import com.jfinal.config.*;
import com.jfinal.ext.handler.ContextPathHandler;
import com.jfinal.ext.handler.UrlSkipHandler;
import com.jfinal.json.MixedJsonFactory;
import com.jfinal.kit.Prop;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.activerecord.dialect.MysqlDialect;
import com.jfinal.plugin.cron4j.Cron4jPlugin;
import com.jfinal.plugin.druid.DruidPlugin;
import com.jfinal.plugin.druid.DruidStatViewHandler;
import com.jfinal.plugin.druid.IDruidStatViewAuth;
import com.jfinal.render.ViewType;
import com.jfinal.server.undertow.UndertowServer;
import com.jfinal.template.Engine;

import javax.servlet.http.HttpServletRequest;


/**
 * Jfinal框架 配置
 *
 * @author zhangcuang
 */
public class AppConfig extends JFinalConfig {
    private Prop configProp = PropKit.use("config.properties");

    public static void main(String[] args) {
        UndertowServer.create(AppConfig.class)
                .configWeb(builder -> {
                    // druid web filter
                    builder.addFilter("DruidWebStatFilter", "com.alibaba.druid.support.http.WebStatFilter");
                    builder.addFilterUrlMapping("DruidWebStatFilter", "/*");
                    builder.addFilterInitParam("DruidWebStatFilter", "exclusions", "*.js,*.gif,*.jpg,*.jpeg,*.png,*.css,*.ico,/druid/*,/static/*");
                    builder.addFilterInitParam("DruidWebStatFilter", "principalSessionName", "SYS_USER_NAME");
                    builder.addFilterInitParam("DruidWebStatFilter", "profileEnable", "true");
                    // cors 跨域 filter
                    builder.addFilter("CORS", "com.thetransactioncompany.cors.CORSFilter");
                    builder.addFilterUrlMapping("CORS", "/*");
                    builder.addFilterInitParam("CORS", "cors.allowOrigin", "*");
                    builder.addFilterInitParam("CORS", "cors.supportedMethods", "GET, POST, HEAD, PUT, DELETE");
                    builder.addFilterInitParam("CORS", "cors.supportedHeaders", "Accept, Origin, X-Requested-With, Content-Type, Last-Modified");
                    builder.addFilterInitParam("CORS", "cors.exposedHeaders", "Set-Cookie");
                    builder.addFilterInitParam("CORS", "cors.supportsCredentials", "true");
                    // 配置 WebSocket，MyWebSocket 需使用 ServerEndpoint 注解
                    builder.addWebSocketEndpoint("com.github.qinyou.common.ws.WebSocketServer");
                }).start();
    }

    /**
     * 配置JFinal常量
     *
     * @param me 常量集合
     */
    @Override
    public void configConstant(Constants me) {
        Prop fileProp = PropKit.use("file.properties");

        me.setDevMode(configProp.getBoolean("devMode"));
        me.setLogFactory(new LogBackLogFactory());
        me.setInjectDependency(true);

        // 上传下载
        me.setBaseUploadPath(fileProp.get("upload"));
        me.setMaxPostSize(fileProp.getInt("maxPostSize"));
        me.setBaseDownloadPath(fileProp.get("download"));

        // 视图
        me.setViewType(ViewType.FREE_MARKER);
        me.setViewExtension(".ftl");
        me.setError403View(Constant.VIEW_PATH + "common/403.ftl");
        me.setError404View(Constant.VIEW_PATH + "common/404.ftl");
        me.setError500View(Constant.VIEW_PATH + "common/500.ftl");

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
        me.add("/login", LoginController.class, Constant.VIEW_PATH); // 登录
        me.add("/dashboard", MainController.class, Constant.VIEW_PATH);   // 控制面板
        me.add("/utils", UtilsController.class, Constant.VIEW_PATH); // 页面工具
        me.add(new SystemRoute());  // system 模块路由
        me.add(new ExampleRoute()); // 用例 模块路由
    }

    /**
     * 配置 插件
     *
     * @param me 插件集合
     */
    @Override
    public void configPlugin(Plugins me) {
        Prop jdbcProp = PropKit.use("jdbc.properties");

        // 数据库
        DruidPlugin druidPlugin = new DruidPlugin(jdbcProp.get("jdbc.url"), jdbcProp.get("jdbc.user"), jdbcProp.get("jdbc.password"), jdbcProp.get("jdbc.driver"));
        druidPlugin.addFilter(new StatFilter());
        WallFilter wall = new WallFilter();
        wall.setDbType(jdbcProp.get("jdbc.dbType"));
        druidPlugin.addFilter(wall);
        me.add(druidPlugin);

        ActiveRecordPlugin activeRecordPlugin = new ActiveRecordPlugin(druidPlugin);
        activeRecordPlugin.setDialect(new MysqlDialect());
        // activeRecordPlugin.setContainerFactory(new CaseInsensitiveContainerFactory());
        activeRecordPlugin.setShowSql(configProp.getBoolean("devMode"));
        SystemModelMapping.mapping(activeRecordPlugin); // system 模块 表映射
        ExampleModelMapping.mapping(activeRecordPlugin); // 用例模块
        me.add(activeRecordPlugin);

        Cron4jPlugin cp = new Cron4jPlugin(PropKit.use("task.properties"), "cron4j");
        me.add(cp);

        // redis 插件
//        Prop redisProp = PropKit.use("redis.properties");
//        RedisPlugin userRedis = new RedisPlugin("user", redisProp.get("host"),redisProp.getInt("port")
//                ,redisProp.getInt("timeout"),redisProp.get("password"),redisProp.getInt("database"));
//        me.add(userRedis);
    }

    /**
     * 配置 jfinal interceptor
     *
     * @param me interceptor集合
     */
    @Override
    public void configInterceptor(Interceptors me) {
        me.addGlobalActionInterceptor(new ExceptionInterceptor());   // 异常，访问日志
        me.addGlobalActionInterceptor(new LoginInterceptor());       // 登录
        me.addGlobalActionInterceptor(new PermissionInterceptor());  // 权限
        me.addGlobalActionInterceptor(new UserSetttingInterceptor());
    }

    /**
     * 配置 jfinal handler
     *
     * @param me handler集合
     */
    @Override
    public void configHandler(Handlers me) {
        // 跳过处理 ws 请求
        me.add(new UrlSkipHandler("^/ws-server", false));
        // 视图中 添加context路径
        me.add(new ContextPathHandler("ctx"));

        // druid 监控（只允许admin查看）
        DruidStatViewHandler dvh = new DruidStatViewHandler("/druid", new IDruidStatViewAuth() {
            public boolean isPermitted(HttpServletRequest request) {
                SysUser sysUser = (SysUser) request.getSession().getAttribute(Constant.SYS_USER);
                if (sysUser == null) {
                    return false;
                }
                return "admin".equals(sysUser.getUsername());
            }
        });
        me.add(dvh);

    }

    @Override
    public void configEngine(Engine me) {
    }
}
