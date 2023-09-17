package com.project.projectWs.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.common.utils.ResponseHandler;
import com.project.projectWs.dto.RequestSaveRegistrationDto;
import com.project.projectWs.dto.RequestUpdateRegistrationDto;
import com.project.projectWs.dto.ResponseRegistrationDto;
import com.project.projectWs.facade.RegistrationFacade;
import com.project.projectWs.utils.Routes;

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
	
	@GetMapping("/find-all-by-task-id/{taskId}")
	public ResponseEntity<Object> findAllRegistrationByTaskId(@PathVariable("taskId") String taskId) {
		List<ResponseRegistrationDto> dtos = registrationFacade.findAllRegistration(taskId);
		return ResponseHandler.getResponse(dtos , HttpStatus.OK);
	}
	
//	@GetMapping("/find-by-id/{id}")
//	public ResponseEntity<Object> findById(@PathVariable("id") String id) {
//		ResponseRegistrationDto dto = registrationFacade.findById(id);
//		return ResponseHandler.getResponse(dto, HttpStatus.OK);
//	}
}
