package com.project.projectWs.Rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.common.utils.ResponseHandler;
import com.project.location.dto.AreaDto;
import com.project.projectWs.Utils.Routes;
import com.project.projectWs.dto.RequestSaveTutor;
import com.project.projectWs.dto.ResponseTutor;
import com.project.projectWs.facade.TutorFacade;


@RestController
@RequestMapping(value = Routes.Tutor)
public class TutorRest {
	
	@Autowired
	private TutorFacade tutorFacade;
	
	@PostMapping("/save-tutor")
	public ResponseEntity<Object> saveTutor(@RequestBody final RequestSaveTutor request) {
		Long id = tutorFacade.saveTutor(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}
	
	@GetMapping("/find-all-tutor")
	public ResponseEntity<Object> findAllTutor() {
		List<ResponseTutor> tutorDtos = tutorFacade.findallTutor();
		return ResponseHandler.getResponse(tutorDtos, HttpStatus.OK);
	}

}
