package com.project.request;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
@SpringBootApplication(scanBasePackages = { "com.project.request.service",
"com.project.request.repository" })
public class RequestApplication {
	public static void main(String[] args) {
		SpringApplication.run(RequestApplication.class, args);
	}
}
