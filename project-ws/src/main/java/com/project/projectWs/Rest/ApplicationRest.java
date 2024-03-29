package com.project.projectWs.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.common.utils.ResponseHandler;
import com.project.projectWs.dto.RequestSaveApplicationDto;
import com.project.projectWs.dto.RequestUpdateApplicationDto;
import com.project.projectWs.dto.ResponseApplicationDto;
import com.project.projectWs.facade.ApplicationFacade;
import com.project.projectWs.utils.Routes;

@RestController
@RequestMapping(value = Routes.APPLICATION)
public class ApplicationRest {

	@Autowired
	private ApplicationFacade applicationFacade;

	@PostMapping("/create")
	@PreAuthorize("hasAnyAuthority('TUTOR', 'ADMINISTRATOR')")
	public ResponseEntity<Object> createApplication(@RequestBody final RequestSaveApplicationDto request) {
		String id = applicationFacade.createApplication(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}

	@PutMapping("/update")
	@PreAuthorize("hasAnyAuthority('TUTOR', 'ADMINISTRATOR')")
	public ResponseEntity<Object> updateApplication(@RequestBody final RequestUpdateApplicationDto request) {
		String id = applicationFacade.updateApplication(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}
	
	@GetMapping("/find-by-task-id/{id}")
	@PreAuthorize("hasAnyAuthority('ADMINISTRATOR')")
	public ResponseEntity<Object> findAllApplication(@PathVariable("id") String id) {
		List<ResponseApplicationDto> dtos = applicationFacade.findAllApplication(id);
		return ResponseHandler.getResponse(dtos , HttpStatus.OK);
	}
	
//	@GetMapping("/find-by-id/{id}")
//	public ResponseEntity<Object> findById(@PathVariable("id") String id) {
//		ResponseApplicationDto dto = applicationFacade.findById(id);
//		return ResponseHandler.getResponse(dto, HttpStatus.OK);
//	}

}
