package com.ya.yatakeout;

import org.junit.jupiter.api.Test;

/**
 * @author yagote    create 2023/2/13 15:11
 */
public class UploadTest {
    @Test   //上传的文件后缀截取测试
    public void Test1(){
        String fileName = "ererewe.jpg";
        String suffix = fileName.substring(fileName.lastIndexOf("."));
        System.out.println(suffix);
    }
}
