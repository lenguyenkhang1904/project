package com.project.projectWs.rest;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.common.utils.ResponseHandler;
import com.project.projectWs.dto.RequestSaveUserDto;
import com.project.projectWs.dto.RequestUpdateRegisterAndLearnerTypeUserDto;
import com.project.projectWs.dto.RequestUpdateUserDto;
import com.project.projectWs.dto.RequestUpdateUserRoleDto;
import com.project.projectWs.dto.RequestUpdateUserTypeTutorDto;
import com.project.projectWs.dto.ResponseUserDto;
import com.project.projectWs.facade.UserFacade;
import com.project.projectWs.utils.Routes;import com.project.user.management.dto.UserDto;
 	
@RestController
@RequestMapping(value = Routes.USER)
public class UserRest {
	
	@Autowired
	private UserFacade userFacade;

	@PostMapping("/create")
	public ResponseEntity<Object> saveUser(@RequestBody @Valid final RequestSaveUserDto request, BindingResult error) {
		if(error.hasErrors()) {
			return ResponseHandler.getResponse(error, HttpStatus.BAD_REQUEST);
		}
		String id = userFacade.saveUser(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}

	@PutMapping("/update")
	public ResponseEntity<Object> updateUser(@RequestBody @Valid  final RequestUpdateUserDto request, BindingResult error) {
		if(error.hasErrors()) {
			return ResponseHandler.getResponse(error, HttpStatus.BAD_REQUEST);
		}
		String id = userFacade.updateUser(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}
	
	@PutMapping("/update-role")
	public ResponseEntity<Object> updateUserRole(@RequestBody final RequestUpdateUserRoleDto request) {
		String id = userFacade.updateUserRole(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}
	
	@PutMapping("/update-type-tutor")
	public ResponseEntity<Object> updateTutorTypeUser(@RequestBody final RequestUpdateUserTypeTutorDto request) {
		String id = userFacade.updateUserTypeTutor(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}
	
	@PutMapping("/update-type-register-and-learner")
	public ResponseEntity<Object> updateRegisterAndLearnerTypeUser(@RequestBody final RequestUpdateRegisterAndLearnerTypeUserDto request) {
		String id = userFacade.updateRegisterAndLearnerTypeUser(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}
	
	@GetMapping("/find-all-user")
	public ResponseEntity<Object> findAll() {
		List<ResponseUserDto> response = userFacade.findAll();
		return ResponseHandler.getResponse(response, HttpStatus.OK);
	}

}
