package com.project.projectWs.utils;

import java.nio.charset.StandardCharsets;
import java.util.Arrays;

import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import com.project.projectWs.dto.RequestOauth;
import com.project.projectWs.dto.ResponseToken;

import lombok.extern.log4j.Log4j2;

@Component
public class GenerateToken {

	@Autowired
	private RestTemplate restTemplate;

	public ResponseToken generateToken(RequestOauth request) {

		HttpHeaders header = buildHeader(request.getSecretId(), request.getClientId());

		String url = request.getUrlBase() + "/oauth/token";
		MultiValueMap<String, String> body = new LinkedMultiValueMap<String, String>();
		body.add("grant_type", "password");
		body.add("username", request.getUsername());
		body.add("password", request.getPassword());

		HttpEntity<MultiValueMap<String, String>> entity = new HttpEntity<MultiValueMap<String, String>>(body, header) ;

		ResponseEntity<ResponseToken> response = restTemplate.exchange(url, HttpMethod.POST, entity,
				ResponseToken.class);
		
		return response.getBody();
	}

	private HttpHeaders buildHeader(final String secretId, final String clientId) {
		String credentials = clientId + ":" + secretId;
		String encodedCredentials = new String(Base64.encodeBase64(credentials.getBytes(StandardCharsets.US_ASCII)));
		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_FORM_URLENCODED));
		headers.add("Authorization", "Basic " + encodedCredentials);
		return headers;
	}
	
    public boolean validateToken(RequestOauth request) {
    	
    	HttpHeaders header = buildHeader(request.getSecretId(), request.getClientId());
    	
    	String url = request.getUrlBase() + "/oauth/check_token?token=" + request.getToken();
    	
    	HttpEntity<Object> entity = new HttpEntity<>(header);
    	
    	ResponseEntity<Object> response = restTemplate.exchange(url, HttpMethod.POST, entity,
				Object.class);	
    	return true;
    }

}
