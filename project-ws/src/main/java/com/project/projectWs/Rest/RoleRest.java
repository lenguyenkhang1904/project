package com.project.projectWs.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.common.utils.ResponseHandler;
import com.project.projectWs.facade.RoleFacade;
import com.project.projectWs.utils.Routes;
import com.project.user.management.dto.RoleDto;

@RestController
@RequestMapping(value = Routes.ROLE)
@PreAuthorize("hasAuthority('ADMINISTRATOR')")
public class RoleRest {
	
	@Autowired
	private RoleFacade roleFacade;
	
	@GetMapping("/find-all-role")
	public ResponseEntity<Object> findAllTutor() {
		List<RoleDto> roleDtos = roleFacade.findAll();
		return ResponseHandler.getResponse(roleDtos, HttpStatus.OK);
	}


}
