package com.project.projectWs;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"com.project"})
public class ProjecWsApplication {
	public static void main(String[] args) {
		 SpringApplication.run(ProjecWsApplication.class, args);

	}
}
	