package com.project.projectWs.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.common.utils.ResponseHandler;
import com.project.projectWs.dto.RequestSaveJob;
import com.project.projectWs.dto.RequestUpdateJobDto;
import com.project.projectWs.facade.JobFacade;
import com.project.projectWs.utils.Routes;

@RestController
@RequestMapping(value = Routes.JOB)
public class JobRest {
	
	@Autowired
	private JobFacade jobFacade;

	@PostMapping("/create")
	public ResponseEntity<Object> createJob(@RequestBody final RequestSaveJob request) {
		String id = jobFacade.createJob(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}

	@PutMapping("/update")
	public ResponseEntity<Object> updateJob(@RequestBody final RequestUpdateJobDto request) {
		String id = jobFacade.updateJob(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}

}
