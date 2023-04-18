package com.project.location;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication(scanBasePackages = {"com.project.location.service", "com.project.location.repository"})
public class LocationApplication {

	public static void main(String[] args) {
		 SpringApplication.run(LocationApplication.class, args);

	}

}
