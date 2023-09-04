package com.project.projectWs.rest;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.oauth2.provider.token.ConsumerTokenServices;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.project.common.utils.ResponseHandler;
import com.project.projectWs.dto.RequestEmail;
import com.project.projectWs.dto.RequestLoginDto;
import com.project.projectWs.dto.RequestUpdatePassword;
import com.project.projectWs.facade.UserFacade;
import com.project.projectWs.utils.Routes;

import lombok.extern.log4j.Log4j2;

@RestController
@RequestMapping(value = Routes.AUTH)
@Log4j2
public class AuthRest {

	@Autowired
	private UserFacade userFacade;

	@Autowired
	private ConsumerTokenServices tokenServices;

	@PostMapping("/login")
	public ResponseEntity<Object> login(@RequestHeader(value = "client-id") String clientId,
			@RequestHeader(value = "client-secret") String secretId, @RequestBody RequestLoginDto loginDto,
			BindingResult bindingResult) throws JsonProcessingException {
		log.info("login: " + userFacade.login(loginDto, clientId, secretId).toJson());
		return ResponseHandler.getResponse(userFacade.login(loginDto, clientId, secretId), HttpStatus.OK);
	}

	@GetMapping("/logout")
	public ResponseEntity<Object> logout(HttpServletRequest request) {

		String header = request.getHeader("Authorization");
		if (header != null && header.startsWith("Bearer")) {
			String token = header.substring("Bearer ".length(), header.length());
			tokenServices.revokeToken(token);
			return ResponseHandler.getResponse("Token is revoked", HttpStatus.BAD_REQUEST);
		}
		return ResponseHandler.getResponse("Token is invalid", HttpStatus.BAD_REQUEST);
	}

	@PostMapping("/forgot-password")
	public ResponseEntity<Object> forgotPassword(@RequestBody RequestEmail request)
			throws UnsupportedEncodingException, MessagingException {
		String message = userFacade.forgotPassword(request);
		return ResponseHandler.getResponse(message, HttpStatus.OK);

	}
	
	@PutMapping("/change-password")
	public ResponseEntity<Object> changePassword(@RequestBody RequestUpdatePassword  request)
			throws UnsupportedEncodingException, MessagingException {
		String message = userFacade.changePassword(request);
		return ResponseHandler.getResponse(message, HttpStatus.OK);

	}

}
