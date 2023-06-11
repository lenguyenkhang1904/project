package com.project.projectWs.Rest;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.oauth2.provider.token.ConsumerTokenServices;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.common.utils.ResponseHandler;
import com.project.projectWs.Utils.Routes;
import com.project.projectWs.dto.RequestLoginDto;
import com.project.projectWs.facade.UserFacade;

@RestController
@RequestMapping(value = Routes.AUTH)
public class AuthRest {

	@Autowired
	private UserFacade userFacade;
	
	@Autowired
	private ConsumerTokenServices tokenServices;

	@PostMapping("/login")
	public ResponseEntity<Object> login(@RequestHeader(value = "client-id") String clientId,
			@RequestHeader(value = "client-secret") String secretId, @RequestBody RequestLoginDto loginDto,
			BindingResult bindingResult) {
		return ResponseHandler.getResponse(userFacade.login(loginDto, clientId, secretId), HttpStatus.OK);
	}
	
	@GetMapping("/logout")
	public ResponseEntity<Object> logout(HttpServletRequest request) {
		
		String header = request.getHeader("Authorization");
		if(header != null && header.startsWith("Bearer")) {
			String token = header.substring("Bearer ".length(), header.length());
			tokenServices.revokeToken(token);
			return ResponseHandler.getResponse("Token is revoked", HttpStatus.BAD_REQUEST);
		}
		return ResponseHandler.getResponse("Token is invalid", HttpStatus.BAD_REQUEST);
	}

}
