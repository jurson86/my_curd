package com.hxkj.common.exception;

/**
 * 错误消息提示异常。异步请求时，前端会弹出此消息
 */
public class ErrorMsgException extends RuntimeException {
    private static final long serialVersionUID = 1L;

    public ErrorMsgException(String string) {
        super(string);
    }

}
