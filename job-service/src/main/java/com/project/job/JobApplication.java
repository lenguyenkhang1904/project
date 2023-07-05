package com.project.job;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = {"com.project.job.service", "com.project.job.repository"})
public class JobApplication {
	public static void main(String[] args) {
		 SpringApplication.run(JobApplication.class, args);

	}
}
