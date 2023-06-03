package com.project.projectWs.security;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.cors.CorsConfiguration;

@Configuration
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	private CustumerService custumerService;

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.cors();
		http.csrf().disable();
		http.cors().configurationSource(request -> { 
			CorsConfiguration cors = new CorsConfiguration();
			cors.applyPermitDefaultValues();
			ArrayList<String> methodList = new ArrayList<String>();
			methodList.add("GET");
			methodList.add("POST");
			methodList.add("PUT");
			methodList.add("DELETE");
			cors.setAllowedMethods(methodList);
			ArrayList<String> headerList = new ArrayList<String>();
			headerList.add("Access-Control-Allow-Origin");
			return cors;
		});

		http.antMatcher("/api/**").authorizeRequests()
			.antMatchers("/oauth/**", "/login", "/swagger-ui/index.html")
			.permitAll().anyRequest().authenticated();
		http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);
	}

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(custumerService).passwordEncoder(passwordEncoder);
	}

	@Bean
	public AuthenticationManager authenticationManagerBean() throws Exception {
		return super.authenticationManagerBean();
	}

}
