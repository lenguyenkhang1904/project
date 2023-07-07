package com.project.projectWs.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.common.utils.ResponseHandler;
import com.project.projectWs.facade.SubjectGroupFacade;
import com.project.projectWs.utils.Routes;

@RestController
@RequestMapping(value = Routes.SUBJECT_GROUP)
public class SubjectGroupRest {
	
	@Autowired
	private SubjectGroupFacade subjectGroupFacade;	
	
	@GetMapping("/find-all")
	public ResponseEntity<Object> findAllTutor() {
		return ResponseHandler.getResponse(subjectGroupFacade.findAll(), HttpStatus.OK);
	}
}
