package com.project.person;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = {"com.project.person.service", "com.project.person.repository"})
public class PersonApplication {
	public static void main(String[] args) {
		 SpringApplication.run(PersonApplication.class, args);

	}
}
