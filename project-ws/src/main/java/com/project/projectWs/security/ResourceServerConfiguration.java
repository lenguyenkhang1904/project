package com.project.projectWs.security;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configurers.ResourceServerSecurityConfigurer;
import org.springframework.web.cors.CorsConfiguration;

import com.project.projectWs.utils.Routes;

@SuppressWarnings("deprecation")
@Configuration
@EnableResourceServer
public class ResourceServerConfiguration extends ResourceServerConfigurerAdapter {

	@Value("${OAuth.resource}")
	private String resource;

	@Override
	public void configure(ResourceServerSecurityConfigurer resources) throws Exception {
		resources.resourceId(resource);
	}

	@Override
	public void configure(HttpSecurity http) throws Exception {
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
		
		
		http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS).and().authorizeRequests()
				.antMatchers("/api/v2/**").authenticated().and().formLogin()
				.loginProcessingUrl(Routes.AUTH);
		// antMatchers("/api/v2/user/**",
		// "/api/v2/role/**").hasAnyRole("administrator");
	}
}
