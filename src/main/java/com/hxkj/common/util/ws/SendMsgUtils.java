package com.hxkj.common.util.ws;

import com.hxkj.common.util.ExecutorServiceUtils;
import com.hxkj.common.util.StringUtils;
import com.jfinal.kit.StrKit;
import org.apache.log4j.Logger;

import javax.websocket.Session;
import java.io.IOException;
import java.util.List;
import java.util.Set;

/**
 * 发送 websocket 消息
 *
 * @author chuang
 * @date 2018/9/10
 */
public class SendMsgUtils {

    private final static Logger LOG = Logger.getLogger(SendMsgUtils.class);


    /**
     * 给部分用户发送 消息
     *
     * @param userIds auth_user 表主键，即用户id
     * @param msg
     */
    public final static void sendToUsers(Set<Long> userIds, String msg) {
        for (Long userId : userIds) {
            // 线程池运行
            ExecutorServiceUtils.pool.submit(new Runnable() {
                @Override
                public void run() {
                    String sessionId = OnlineUserContainer.USERID_SESSIONID.get(userId);

                    if (StrKit.isBlank(sessionId)) {
                        if (LOG.isInfoEnabled()) {
                            LOG.info("用户：" + userId + " websocket 不在线，不使用 WebSocket 推送。");
                        }
                        return;
                    }

                    Session session = OnlineUserContainer.SESSIONID_SESSION.get(sessionId);
                    if (session == null) {
                        if (LOG.isInfoEnabled()) {
                            LOG.info("用户：" + userId + " 找不到 websocket session，不使用 WebSocket 推送。");
                        }
                        return;
                    }
                    try {
                        session.getBasicRemote().sendText(msg);
                    } catch (IOException e) {
                        WebSocketServer.closeSession(session);
                        LOG.error(e.getMessage(), e);
                    }
                }
            });
        }
    }


    /**
     * 发送消息给部分用户
     *
     * @param sessionIds
     * @param msg
     */
    public final static void sendToUsers(List<String> sessionIds, String msg) {
        Session session;
        for (String sessionId : sessionIds) {
            sessionId = StringUtils.decryptAesHex(sessionId);
            if (sessionId == null) {
                continue;
            }
            session = OnlineUserContainer.SESSIONID_SESSION.get(sessionId);
            if (session != null) {
                try {
                    session.getBasicRemote().sendText(msg);
                } catch (IOException e) {
                    WebSocketServer.closeSession(session);
                    LOG.error(e.getMessage(), e);
                }
            }
        }
    }


    /**
     * 广播通知所有在线客户
     *
     * @param message   消息文本
     * @param sessionId 排除的当前session
     */
    public final static void broadcast(String message, String sessionId) {
        if (LOG.isInfoEnabled()) {
            LOG.info("broadcast msg : " + message);
        }
        ExecutorServiceUtils.pool.submit(new Runnable() {
            @Override
            public void run() {
                Session session;
                for (String mapKey : OnlineUserContainer.SESSIONID_SESSION.keySet()) {
                    // 排除自己
                    if (sessionId == null || mapKey.equals(sessionId)) {
                        continue;
                    }
                    session = OnlineUserContainer.SESSIONID_SESSION.get(mapKey);
                    try {
                        session.getBasicRemote().sendText(message);
                    } catch (IOException e) {
                        WebSocketServer.closeSession(session);
                        LOG.error(e.getMessage(), e);
                    }
                }
            }
        });

    }
}
