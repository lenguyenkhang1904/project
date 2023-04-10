package com.project.projectWs;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@ComponentScan({"com.project.projectWs","com.project.location"})
@EnableJpaRepositories({"com.project.location.repository"})
public class ProjecWsApplication {
	public static void main(String[] args) {
		 SpringApplication.run(ProjecWsApplication.class, args);

	}
}
	