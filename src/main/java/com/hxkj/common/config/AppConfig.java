package com.hxkj.common.config;

import com.alibaba.druid.filter.stat.StatFilter;
import com.alibaba.druid.wall.WallFilter;
import com.hxkj.common.constant.Constant;
import com.hxkj.common.interceptor.AuthorityInterceptor;
import com.hxkj.system.model.SysUser;
import com.hxkj.system.service.TaskService;
import com.jfinal.aop.Duang;
import com.jfinal.config.*;
import com.jfinal.core.JFinal;
import com.jfinal.ext.interceptor.SessionInViewInterceptor;
import com.jfinal.json.FastJsonFactory;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.activerecord.dialect.MysqlDialect;
import com.jfinal.plugin.druid.DruidPlugin;
import com.jfinal.plugin.druid.DruidStatViewHandler;
import com.jfinal.plugin.druid.IDruidStatViewAuth;
import com.jfinal.render.FreeMarkerRender;
import com.jfinal.render.ViewType;
import com.jfinal.template.Engine;
import freemarker.template.TemplateModelException;

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
        //读取数据库配置文件
        PropKit.use("config.properties");
        //设置当前是否为开发模式
        me.setDevMode(PropKit.getBoolean("devMode"));
        //设置默认上传文件保存路径 getFile等使用

        me.setBaseUploadPath("upload/temp/");
        //设置上传最大限制尺寸
        me.setMaxPostSize(1024 * 1024 * 100);
        //设置默认下载文件路径 renderFile使用
        me.setBaseDownloadPath("download");
        //设置默认视图类型
        me.setViewType(ViewType.FREE_MARKER);
        //设置404渲染视图
        //me.setError404View();
        //设置json工厂
        me.setJsonFactory(FastJsonFactory.me());

        // json日期格式
        me.setJsonDatePattern("yyyy-MM-dd HH:mm:ss");

    }

    @Override
    public void configRoute(Routes me) {
        me.add(new SystemRoute()); // system 模块 路由
        me.add(new BusRoute());  // bus 模块 路由
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
        // 系统模块 设置
        MappingKit.mapping(arp);

        me.add(dbPlugin);
        me.add(arp);
    }

    @Override
    public void configInterceptor(Interceptors me) {

        // Action 级别 权限拦截器
        me.addGlobalActionInterceptor(new AuthorityInterceptor());
        me.addGlobalActionInterceptor(new SessionInViewInterceptor());
    }

    @Override
    public void configHandler(Handlers me) {

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
        // freemarker 中添加上下文路径
        try {
            FreeMarkerRender.getConfiguration().setSharedVariable("ctx", JFinal.me().getContextPath());
        } catch (TemplateModelException e) {
            e.printStackTrace();
        }

        //定时任务
        TaskService taskService = Duang.duang(TaskService.class);
        taskService.startAll();
    }

    @Override
    public void beforeJFinalStop() {

    }

    /**
     * 配置模板引擎
     */
    @Override
    public void configEngine(Engine me) {
        //这里只有选择JFinal TPL的时候才用
        //配置共享函数模板
        //me.addSharedFunction("/view/common/layout.html")
    }


}
