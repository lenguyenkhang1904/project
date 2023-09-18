package com.project.projectWs.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.client.RestTemplate;

@Configuration
@ComponentScan("com.project")
@EnableJpaRepositories({ "com.project.location.repository", "com.project.person.repository",
"com.project.education.repository", "com.project.user.management.repository", "com.project.task.repository", "com.project.request.repository"
, "com.project.job.repository", "com.project.finance.repository", "com.project.review.repository"})
public class AppConfig {

	
	
	
	@Bean
	public PasswordEncoder getPassword() {
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	public RestTemplate restTemplate() {
	    return new RestTemplate();
	}
}
