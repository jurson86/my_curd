package com.github.qinyou.common.config;

import com.alibaba.druid.filter.stat.StatFilter;
import com.alibaba.druid.wall.WallFilter;
import com.github.qinyou.LoginController;
import com.github.qinyou.MainController;
import com.github.qinyou.common.interceptor.*;
import com.github.qinyou.common.utils.UtilsController;
import com.github.qinyou.common.utils.log.LogBackLogFactory;
import com.github.qinyou.common.web.FileController;
import com.github.qinyou.example.ExampleModelMapping;
import com.github.qinyou.example.ExampleRoute;
import com.github.qinyou.genOnline.GenOnlineRoute;
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
import java.util.ArrayList;
import java.util.List;


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

                    // 配置 WebSocket，MyWebSocket 需使用 ServerEndpoint 注解
                    builder.addWebSocketEndpoint("com.github.qinyou.common.ws.WebSocketServer");
                }).start();
    }


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
        // jfinal json 和 fast json 混合
        me.setJsonFactory(MixedJsonFactory.me());
        me.setJsonDatePattern("yyyy-MM-dd HH:mm:ss");
    }


    @Override
    public void configRoute(Routes me) {
        me.add("/login", LoginController.class, Constant.VIEW_PATH); // 登录
        me.add("/dashboard", MainController.class, Constant.VIEW_PATH);   // 控制面板
        me.add("/utils", UtilsController.class, Constant.VIEW_PATH); // 页面工具
        me.add("/file", FileController.class, Constant.VIEW_PATH); // 公共文件上传
        me.add(new SystemRoute());  // system 模块路由
        me.add(new ExampleRoute()); // 用例 模块路由
        me.add(new GenOnlineRoute()); // 在线代码生成器 模块路由
    }


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
        activeRecordPlugin.setShowSql(configProp.getBoolean("devMode"));
        SystemModelMapping.mapping(activeRecordPlugin);  // system 模块
        ExampleModelMapping.mapping(activeRecordPlugin); // example 模块
        me.add(activeRecordPlugin);

        Cron4jPlugin cp = new Cron4jPlugin(PropKit.use("task.properties"), "cron4j");
        me.add(cp);

        // redis 插件
//        Prop redisProp = PropKit.use("redis.properties");
//        RedisPlugin userRedis = new RedisPlugin("user", redisProp.get("host"),redisProp.getInt("port")
//                ,redisProp.getInt("timeout"),redisProp.get("password"),redisProp.getInt("database"));
//        me.add(userRedis);
    }


    @Override
    public void configInterceptor(Interceptors me) {
        me.addGlobalActionInterceptor(new LoginInterceptor());       // 登录
        me.addGlobalActionInterceptor(new PermissionInterceptor());  // 权限
        Boolean visitLog = configProp.getBoolean("visitLog");
        if(visitLog){
            me.addGlobalActionInterceptor(new VisitLogInterceptor()); // 访问日志
        }
        // session 数据 放入 request, 控制 dom
        List<String> sessionFields = new ArrayList<>();
        sessionFields.add("sysUserName");
        sessionFields.add("buttonCodes");
        me.addGlobalActionInterceptor(new SessionInViewInterceptor(sessionFields));
        me.addGlobalActionInterceptor(new ComActionInterceptor());   // 异常，访问日志
    }

    @Override
    public void configHandler(Handlers me) {
        // 跳过处理 ws 请求
        me.add(new UrlSkipHandler("^/ws-server", false));
        // 视图中添加context路径
        me.add(new ContextPathHandler("ctx"));
        // druid 监控（只允许admin查看）
        DruidStatViewHandler dvh = new DruidStatViewHandler("/druid", new IDruidStatViewAuth() {
            public boolean isPermitted(HttpServletRequest request) {
                SysUser sysUser = (SysUser) request.getSession().getAttribute("sysUser");
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
