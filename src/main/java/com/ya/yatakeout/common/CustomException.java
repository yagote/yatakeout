package com.ya.yatakeout.common;

/**
 * 自定义业务异常类
 * @author yagote    create 2023/2/13 12:06
 */
public class CustomException extends RuntimeException {
    public CustomException(String message){
        super(message);
    }
}
