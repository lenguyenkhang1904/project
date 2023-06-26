package com.project.projectWs.Rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.common.utils.ResponseHandler;
import com.project.projectWs.Utils.Routes;
import com.project.projectWs.dto.RequestSaveRegistrationDto;
import com.project.projectWs.dto.RequestUpdateRegistrationDto;
import com.project.projectWs.facade.RegistrationFacade;

@RestController
@RequestMapping(value = Routes.REGISTRATION)
public class RegistrationRest {
	
	@Autowired
	private RegistrationFacade registrationFacade;
	
	@PostMapping("/create")
	public ResponseEntity<Object> createRegistration(@RequestBody final RequestSaveRegistrationDto request) {
		String id = registrationFacade.createRegistration(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}
	
	@PutMapping("/update")
	public ResponseEntity<Object> updateRegistration(@RequestBody final RequestUpdateRegistrationDto request) {
		String id = registrationFacade.updateRegistration(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}

}
