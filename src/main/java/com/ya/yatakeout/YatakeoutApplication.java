package com.ya.yatakeout;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * @author yagote    create 2023/2/10 15:02
 */
@Slf4j
@SpringBootApplication
@ServletComponentScan       //扫描过滤器文件
@EnableTransactionManagement    //开启事务支持
public class YatakeoutApplication {
    public static void main(String[] args) {
        SpringApplication.run(YatakeoutApplication.class);
        log.info("项目启动成功……");
    }
}
