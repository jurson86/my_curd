package com.hxkj.websocket.handler;

import com.hxkj.system.model.SysUser;
import org.apache.log4j.Logger;

import javax.websocket.*;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@ServerEndpoint("/websocket")
public class WebSocketServer {

    private final static Logger LOG = Logger.getLogger(WebSocketServer.class);

    //  session id 和 当前登录的用户id
    public static Map<String, String> sIdMUid = new ConcurrentHashMap<>();
    // ws sessionid  和 session
    public static Map<String, Session> sIdMSession = new ConcurrentHashMap<>();

    /**
     * 建立 ws 连接
     *
     * @param session
     */
    @OnOpen
    public void onOpen(Session session) {
        // 输出默认信息
        LOG.debug("==basicRemote:   " + session.getBasicRemote());
        LOG.debug("==maxTextMessageBufferSize: " + session.getMaxTextMessageBufferSize());
        LOG.debug("==maxBinaryMessageBufferSize:  " + session.getMaxBinaryMessageBufferSize());
        //session.setMaxIdleTimeout(10);  // 设置 无操作超时时间为10秒， 默认为0 表示不自动超时
        LOG.debug("==maxIdleTimeout: " + session.getMaxIdleTimeout());

        // url参数
        String queryString = session.getQueryString();
        String userId = queryString.split("=")[1];
        SysUser sysUser = SysUser.dao.findById(userId);
        if (sysUser != null) {
            LOG.info(sysUser.getName() + " -- 上线了");
            broadcast(sysUser.getName() + "---上线了");
            sIdMUid.put(session.getId(), userId);
            sIdMSession.put(session.getId(), session);
        } else {
            try {
                session.close();
            } catch (IOException e) {
                LOG.error(e.getMessage());
            }
        }
    }


    /**
     * 关闭 ws 连接
     *
     * @param session
     */
    @OnClose
    public void onClose(Session session) {
        String sessionId = session.getId();
        String userId = sIdMUid.get(sessionId); // 保证存在
        sIdMSession.remove(sessionId);
        sIdMUid.remove(sessionId);
        SysUser sysUser = SysUser.dao.findById(userId);
        if (sysUser != null) {
            LOG.info(sysUser.getName() + "  --下线了");
            broadcast(sysUser.getName() + " ---下线了");
        }

    }

    /**
     * 处理文本消息
     * https://docs.oracle.com/javaee/7/api/javax/websocket/OnMessage.html
     *
     * @param requestJson json 格式的数据
     * @param session
     */
    @OnMessage // 一个 endpoint 只能有一个该方法注解
    public void onMessage(String requestJson, Session session) {
        LOG.info(" get a Message: " + requestJson);
        // 广播
        broadcast(requestJson);
    }


    /**
     * 其它方法发生异常 会触发此方法
     *
     * @param session
     * @param t
     */
    @OnError
    public void onError(Session session, Throwable t) {
        LOG.error(t.getMessage());

        try {
            session.close();
        } catch (IOException e) {
            LOG.error(e.getMessage());
        }

        String sessionId = session.getId();
        String userId = sIdMUid.get(sessionId); // 保证存在
        sIdMSession.remove(sessionId);
        sIdMUid.remove(sessionId);
        SysUser sysUser = SysUser.dao.findById(userId);

        if (sysUser != null) {
            LOG.debug(sysUser.getName() + " --发生异常下线了");
            broadcast(sysUser.getName() + " ---发生异常下线了");
        }
    }


    /**
     * 广播通知所有在线客户
     *
     * @param message
     */
    public void broadcast(String message) {
        for (String mapKey : sIdMSession.keySet()) {
            try {
                sIdMSession.get(mapKey).getBasicRemote().sendText(message);
            } catch (IOException e) {
                LOG.error(e.getMessage());
            }
        }
    }


}