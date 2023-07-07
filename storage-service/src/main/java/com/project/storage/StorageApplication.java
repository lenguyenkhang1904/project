package com.project.storage;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = {"com.project.storage.service"})
public class StorageApplication {
	public static void main(String[] args) {
		 SpringApplication.run(StorageApplication.class, args);

	}
}
