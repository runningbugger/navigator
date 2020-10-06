package com.wxfer.navigator;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.wxfer.navigator.mapper")
public class NavigatorApplication {

	public static void main(String[] args) {
		SpringApplication.run(NavigatorApplication.class, args);
	}

}
