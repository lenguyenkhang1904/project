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

		http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
		.and().authorizeRequests()
		.antMatchers("/api/v2/tutor/find-all-for-web").permitAll()
		.antMatchers("/api/v2/tutor/find-all-for-web-by-id/**").permitAll()
		.antMatchers("/api/v2/tutor-request/create").permitAll()
		.antMatchers("/api/v2/**")
		.authenticated()
		.and().formLogin().loginProcessingUrl(Routes.AUTH)
		.and().csrf().disable().cors()
		.and().logout().clearAuthentication(true).deleteCookies();
	}
}
