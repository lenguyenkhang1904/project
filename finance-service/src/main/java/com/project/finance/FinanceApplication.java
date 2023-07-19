package com.project.finance;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = { "com.project.finance.service", "com.project.finance.repository" })
public class FinanceApplication {
	public static void main(String[] args) {
		SpringApplication.run(FinanceApplication.class, args);
	}
}
