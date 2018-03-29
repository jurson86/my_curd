package com.hxkj.websocket.handler;

import com.jfinal.handler.Handler;
import com.jfinal.kit.StrKit;
import org.apache.log4j.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.regex.Pattern;


/**
 * websocket handler
 * 匹配特定的 ws url
 * 依赖 jfinal
 */
public class WebSocketHandler extends Handler {
    private final static Logger LOG = Logger.getLogger(WebSocketHandler.class);
    private Pattern filterUrlRegxPattern;

    public WebSocketHandler(String filterUrlRegx) {
        if (StrKit.isBlank(filterUrlRegx)) {
            throw new IllegalArgumentException("The para filterUrlRegx can not be blank.");
        }
        filterUrlRegxPattern = Pattern.compile(filterUrlRegx);
    }

    @Override
    public void handle(String target, HttpServletRequest request, HttpServletResponse response, boolean[] isHandled) {
        if (filterUrlRegxPattern.matcher(target).find()) {
            LOG.debug("websocket request: " + target);
            return;
        } else {
            next.handle(target, request, response, isHandled);
        }
    }
}