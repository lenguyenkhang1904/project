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
import com.project.projectWs.dto.RequestSaveJobProgress;
import com.project.projectWs.dto.RequestUpdateJobProgress;
import com.project.projectWs.facade.JobProgressFacade;
import com.project.projectWs.utils.Routes;

@RestController
@RequestMapping(value = Routes.JOB_PROGRESS)
public class JobProgressRest {
	
	@Autowired
	private JobProgressFacade jobProgressFacade;

	@PostMapping("/create")
	public ResponseEntity<Object> createJobProgress(@RequestBody final RequestSaveJobProgress request) {
		String id = jobProgressFacade.createJobProgress(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}

	@PutMapping("/update")
	public ResponseEntity<Object> updateJobProgress(@RequestBody final RequestUpdateJobProgress request) {
		String id = jobProgressFacade.updateJobProgress(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}
	
}
