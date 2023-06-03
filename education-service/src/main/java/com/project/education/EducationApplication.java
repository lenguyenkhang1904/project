package com.project.education;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = { "com.project.education.service", "com.project.education.repository" })
public class EducationApplication {
	public static void main(String[] args) {
		SpringApplication.run(EducationApplication.class, args);
	}
}
