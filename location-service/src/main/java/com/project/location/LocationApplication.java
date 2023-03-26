package com.project.location;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;

@SpringBootApplication
@ComponentScan({"com.project.location.service"})
public class LocationApplication {

	public static void main(String[] args) {
		 SpringApplication.run(LocationApplication.class, args);

	}

}
