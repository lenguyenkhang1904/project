package com.project.projectWs.Rest;

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
import com.project.projectWs.Utils.Routes;
import com.project.projectWs.dto.RequestSaveApplicationDto;
import com.project.projectWs.dto.RequestUpdateApplicationDto;
import com.project.projectWs.dto.ResponseApplicationDto;
import com.project.projectWs.facade.ApplicationFacade;

@RestController
@RequestMapping(value = Routes.APPLICATION)
public class ApplicationRest {

	@Autowired
	private ApplicationFacade applicationFacade;

	@PostMapping("/create")
	public ResponseEntity<Object> createApplication(@RequestBody final RequestSaveApplicationDto request) {
		String id = applicationFacade.createApplication(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}

	@PutMapping("/update")
	public ResponseEntity<Object> updateApplication(@RequestBody final RequestUpdateApplicationDto request) {
		String id = applicationFacade.updateApplication(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}
	
	@GetMapping("/find-all")
	public ResponseEntity<Object> findAllApplication() {
		List<ResponseApplicationDto> dtos = applicationFacade.findAllApplication();
		return ResponseHandler.getResponse(dtos , HttpStatus.OK);
	}
	
	@GetMapping("/find-by-id/{id}")
	public ResponseEntity<Object> findById(@PathVariable("id") String id) {
		ResponseApplicationDto dto = applicationFacade.findById(id);
		return ResponseHandler.getResponse(dto, HttpStatus.OK);
	}

}
