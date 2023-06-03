package com.project.projectWs.Rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
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
@RequestMapping(value = Routes.LOGIN)
public class AuthRest {

	@Autowired
	private UserFacade userFacade;

	@PostMapping()
	public ResponseEntity<Object> login(@RequestHeader(value = "client-id") String clientId,
			@RequestHeader(value = "secret-id") String secretId, @RequestBody RequestLoginDto loginDto,
			BindingResult bindingResult) {
		return ResponseHandler.getResponse(userFacade.login(loginDto, clientId, secretId), HttpStatus.OK);
	}

}
