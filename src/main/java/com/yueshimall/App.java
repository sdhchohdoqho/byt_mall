package com.yueshimall;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication(scanBasePackages = {"com.yueshimall"})
@RestController
@MapperScan("com.yueshimall.dao")
public class App {
    public static void main( String[] args ) {
        SpringApplication.run(App.class,args);
    }
}
