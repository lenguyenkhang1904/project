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
import com.project.projectWs.dto.RequestSaveUserDto;
import com.project.projectWs.dto.RequestUpdateRegisterAndLearnerTypeUserDto;
import com.project.projectWs.dto.RequestUpdateUserDto;
import com.project.projectWs.dto.RequestUpdateUserRoleDto;
import com.project.projectWs.dto.RequestUpdateUserTypeTutorDto;
import com.project.projectWs.facade.UserFacade;
 	
@RestController
@RequestMapping(value = Routes.USER)
public class UserRest {
	
	@Autowired
	private UserFacade userFacade;

	@PostMapping("/create-user")
	public ResponseEntity<Object> saveUser(@RequestBody final RequestSaveUserDto request) {
		String id = userFacade.saveUser(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}

	@PutMapping("/update-user")
	public ResponseEntity<Object> updateUser(@RequestBody final RequestUpdateUserDto request) {
		String id = userFacade.updateUser(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}
	
	@PutMapping("/update-user-role")
	public ResponseEntity<Object> updateUserRole(@RequestBody final RequestUpdateUserRoleDto request) {
		String id = userFacade.updateUserRole(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}
	
	@PutMapping("/update-user-type-tutor")
	public ResponseEntity<Object> updateTutorTypeUser(@RequestBody final RequestUpdateUserTypeTutorDto request) {
		String id = userFacade.updateUserTypeTutor(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}
	
	@PutMapping("/update-register-and-learner-type-user")
	public ResponseEntity<Object> updateRegisterAndLearnerTypeUser(@RequestBody final RequestUpdateRegisterAndLearnerTypeUserDto request) {
		String id = userFacade.updateRegisterAndLearnerTypeUser(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}

}