package com.project.tags;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = {"com.project.tags.service", "com.project.tags.repository"})
public class TutorTagApplication {
	public static void main(String[] args) {
		 SpringApplication.run(TutorTagApplication.class, args);

	}
}
