package com.hxkj;

import com.hxkj.auth.model.AuthMenu;
import com.hxkj.auth.model.AuthUser;
import com.hxkj.auth.model.AuthUserRole;
import com.hxkj.common.constant.Constant;
import com.hxkj.common.controller.BaseController;
import com.hxkj.common.interceptor.LoginInterceptor;
import com.hxkj.common.interceptor.PermissionInterceptor;
import com.hxkj.common.interceptor.ReadJsonInterceptor;
import com.jfinal.aop.Before;
import com.jfinal.aop.Clear;
import com.jfinal.aop.Duang;
import com.jfinal.core.ActionKey;
import com.jfinal.kit.HashKit;
import com.jfinal.kit.PropKit;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.tx.Tx;
import jodd.util.URLDecoder;
import org.apache.log4j.Logger;

import java.util.Date;
import java.util.List;

/**
 * 登录控制器
 *
 * @author zhangchuang
 */
@Clear({LoginInterceptor.class, PermissionInterceptor.class})
public class LoginController extends BaseController {

    private final static Logger LOG = Logger.getLogger(LoginController.class);

    // 登录用户名密码cookie key
    private final static String usernameKey = PropKit.use("config.properties").get("cookie_username_key");
    private final static String passwordKey = PropKit.use("config.properties").get("cookie_password_key");

    /**
     * 登录页面
     */
    @Before(Tx.class)
    public void index() {
        String username = getCookie(usernameKey);
        String password = getCookie(passwordKey);
        LOG.debug("username from cookie: " + username);
        LOG.debug("password from cookie:+" + password);
        // cookie username password 存在
        if (StrKit.notBlank(username) && StrKit.notBlank(password)) {
            AuthUser authUser = AuthUser.dao.findByUsernameAndPassword(username, password);
            // cookie username password 有效
            if (authUser != null && !authUser.getDisabled().equals("1")) {
                // 最后一次登录时间
                authUser.setLastLoginTime(new Date());
                authUser.update();
                // session 中放入登录用户信息
                setSessionAttr(Constant.AUTH_USER, authUser);
                setSessionAttr(Constant.AUTH_USER_NAME, authUser.getName());
                AuthUserRole authUserRole = AuthUserRole.dao.findRolesByUserId(authUser.getId());
                if (authUserRole != null) {
                    setSessionAttr(Constant.AUTH_USER_ROLES, authUserRole.get("roleNames"));
                    setSessionAttr(Constant.AUTH_USER_ROLES, authUserRole.get("roleNames"));
                    LoginService loginService = Duang.duang(LoginService.class);
                    List<AuthMenu> userMenus = loginService.buildTreeUserMenu(authUserRole.get("roleIds"));
                    setSessionAttr(Constant.OWN_MENU, userMenus);
                }
                addOpLog("通过 cookie 登录");
                redirect("/main");
                return;
            } else {
                // 清理 cookie （记住密码信息）
                setCookie(usernameKey, null, 0);
                setCookie(passwordKey, null, 0);
            }
        }
        render("login.html");
    }

    /**
     * 登录表单提交地址
     */
    @Before(Tx.class)
    public void action() {
        String username = getPara("username");
        String password = getPara("password");

        /* username password 无效 */
        if (StrKit.isBlank(username)) {
            setAttr("errMsg", "请填写用户名。");
            render("login.html");
            return;
        }
        if (StrKit.isBlank(password)) {
            setAttr("errMsg", "请填写密码。");
            render("login.html");
            return;
        }
        AuthUser authUser = AuthUser.dao.findByUsername(username);
        if (authUser == null) {
            setAttr("errMsg", username + " 用户不存在。");
            render("login.html");
            return;
        }
        password = HashKit.sha1(password);
        if (!authUser.getPassword().equals(password)) {
            setAttr("username", username);
            setAttr("errMsg", " 密码错误。");
            render("login.html");
            return;
        }
        if (authUser.getDisabled().equals("1")) {
            setAttr("errMsg", username + " 用户被禁用，请联系管理员。");
            render("login.html");
            return;
        }

        /* username password 有效 */

        // 如果选中了记住密码且cookie信息不存在，生成新的cookie 信息
        String remember = getPara("remember");
        if ("on".equals(remember) && getCookie(usernameKey) == null) {
            setCookie(usernameKey, username, 60 * 60 * 24 * 1); // 1天
            setCookie(passwordKey, password, 60 * 60 * 24 * 1);
        }

        authUser.setLastLoginTime(new Date());
        authUser.update();
        /*session 中存入当前用户信息*/
        // 登录用户信息
        setSessionAttr(Constant.AUTH_USER, authUser);
        // 为了 druid session 监控用
        setSessionAttr(Constant.AUTH_USER_NAME, authUser.getName());
        // 用户角色
        AuthUserRole authUserRole = AuthUserRole.dao.findRolesByUserId(authUser.getId());
        if (authUserRole != null) {
            // 角色名称（显示用)
            setSessionAttr(Constant.AUTH_USER_ROLES, authUserRole.get("roleNames"));
            // 查询权限 列表放入到 session中
            LoginService loginService = Duang.duang(LoginService.class);
            List<AuthMenu> userMenus = loginService.buildTreeUserMenu(authUserRole.get("roleIds"));
            setSessionAttr(Constant.OWN_MENU, userMenus);
        }
        // 登录日志
        addOpLog("登录");
        redirect("/main");
    }


    /**
     * 退出
     */
    @ActionKey("/logout")
    @Before(Tx.class)
    public void logout() {
        // 退出日志
        addOpLog("退出");

        // 移除session属性
        removeSessionAttr(Constant.AUTH_USER);
        removeSessionAttr(Constant.AUTH_USER_ROLES);
        removeSessionAttr(Constant.OWN_MENU);

        // 当前session 失效
        getSession().invalidate();

        // 清理 cookie （记住密码信息）
        setCookie(usernameKey, null, 0);
        setCookie(passwordKey, null, 0);
        redirect("/login");
    }


    // 无用
    @ActionKey("/captcha")
    public void captcha() {
        renderCaptcha();
    }

    // 无用
    @ActionKey("/qrcode")
    public void qrcode() {
        String text = StrKit.isBlank(getPara(0)) ? "oh, my_curd!" : getPara(0);
        text = URLDecoder.decode(text, "UTF-8");
        renderQrCode(text, 200, 200);
    }

    // 无用
    @Before(ReadJsonInterceptor.class)
    @ActionKey("/api/json")
    public void json() {
        renderText("over");
    }

    //无用 异常测试
    @ActionKey("/error")
    public void error() {
        int x = 1 / 0;
        renderText("异常了....");
    }
}
