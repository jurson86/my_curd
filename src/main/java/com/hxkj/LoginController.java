package com.hxkj;

import com.hxkj.common.constant.Constant;
import com.hxkj.common.interceptor.AuthorityInterceptor;
import com.hxkj.common.interceptor.readJsonInterceptor;
import com.hxkj.common.util.BaseController;
import com.hxkj.system.model.SysMenu;
import com.hxkj.system.model.SysUser;
import com.hxkj.system.model.SysUserRole;
import com.jfinal.aop.Before;
import com.jfinal.aop.Clear;
import com.jfinal.aop.Duang;
import com.jfinal.core.ActionKey;
import com.jfinal.kit.*;
import com.jfinal.plugin.activerecord.tx.Tx;
import jodd.util.URLDecoder;
import org.apache.log4j.Logger;

import java.util.List;

/**
 * 登录控制器
 */
@Clear({AuthorityInterceptor.class})
public class LoginController extends BaseController {

    private final static Logger LOG = Logger.getLogger(LoginController.class);
    private final static String usernameKey;
    private final static String passwordKey;

    static {
        Prop prop = PropKit.use("config.properties");
        usernameKey = prop.get("cookie_username_key");
        passwordKey = prop.get("cookie_password_key");
    }

    /**
     * 登录页面
     */
    public void index() {
        String username = getCookie(usernameKey);
        String password = getCookie(passwordKey);
        LOG.debug("username from cookie: " + username);
        LOG.debug("password from cookie:+" + password);

        //cookie username password 存在
        if (StrKit.notBlank(username) && StrKit.notBlank(password)) {
            SysUser sysUser = SysUser.dao.findByUsernameAndPassword(username, password);
            //cookie username password 有效
            if (sysUser != null && !sysUser.getDisabled().equals("1")) {
                //session 中放入登录用户信息
                setSessionAttr(Constant.SYSTEM_USER, sysUser);
                setSessionAttr(Constant.SYSTEM_USER_NAME, sysUser.getName());
                SysUserRole sysUserRole = SysUserRole.dao.findRolesByUserId(sysUser.getId());
                if (sysUserRole != null) {
                    setSessionAttr(Constant.SYSTEM_USER_ROLES, sysUserRole.get("roleNames"));
                    setSessionAttr(Constant.SYSTEM_USER_ROLES, sysUserRole.get("roleNames"));
                    LoginService loginService = Duang.duang(LoginService.class);
                    List<SysMenu> userMenus = loginService.getUserMenu(sysUserRole.get("roleIds"));
                    setSessionAttr(Constant.OWN_MENU, userMenus);
                }
                addOpLog("通过 cookie 登录");
                redirect("/main");
                return;
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

        /*username password 无效*/

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
        SysUser sysUser = SysUser.dao.findByUsername(username);
        if (sysUser == null) {
            setAttr("errMsg", username + " 用户不存在。");
            render("login.html");
            return;
        }
        password = HashKit.sha1(password);
        if (!sysUser.getPassword().equals(password)) {
            setAttr("username", username);
            setAttr("errMsg", " 密码错误。");
            render("login.html");
            return;
        }

        if (sysUser.getDisabled().equals("1")) {
            setAttr("errMsg", username + " 用户被禁用，请联系管理员。");
            render("login.html");
            return;
        }

        /*username password 有效*/

        String remember = getPara("remember");

        //如果选中了记住密码且cookie信息不存在，生成新的cookie 信息
        if ("on".equals(remember) && getCookie(usernameKey) == null) {
            setCookie(usernameKey, username, 60 * 60 * 24 * 1); // 1天
            setCookie(passwordKey, password, 60 * 60 * 24 * 1);
        }

        /*session 中存入当前用户信息*/
        //登录用户信息
        setSessionAttr(Constant.SYSTEM_USER, sysUser);
        //为了 druid session 监控用
        setSessionAttr(Constant.SYSTEM_USER_NAME, sysUser.getName());
        // 用户角色
        SysUserRole sysUserRole = SysUserRole.dao.findRolesByUserId(sysUser.getId());
        if (sysUserRole != null) {
            // 角色名称（显示用)
            setSessionAttr(Constant.SYSTEM_USER_ROLES, sysUserRole.get("roleNames"));
            LoginService loginService = Duang.duang(LoginService.class);
            List<SysMenu> userMenus = loginService.getUserMenu(sysUserRole.get("roleIds"));
            setSessionAttr(Constant.OWN_MENU, userMenus);
        }

        addOpLog("登录");
        redirect("/main");
    }


    /**
     * 退出
     */
    @ActionKey("/logout")
    @Before(Tx.class)
    public void logout() {
        addOpLog("退出");
        removeSessionAttr(Constant.SYSTEM_USER);
        removeSessionAttr(Constant.SYSTEM_USER_ROLES);
        removeSessionAttr(Constant.OWN_MENU);

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
    @Before(readJsonInterceptor.class)
    @ActionKey("/api/json")
    public void json(){
       renderText("over");
    }
}
