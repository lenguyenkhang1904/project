package com.project.projectWs.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.common.utils.ResponseHandler;
import com.project.projectWs.dto.RequestSaveTutorInterestDto;
import com.project.projectWs.dto.RequestUpdateTutorInvitationDto;
import com.project.projectWs.dto.ResponseTutorInterestDto;
import com.project.projectWs.facade.TutorInterestFacade;
import com.project.projectWs.utils.Routes;

@RestController
@RequestMapping(value = Routes.TUTOR_INTEREST)
public class TutorInterestRest {
	
	@Autowired
	private TutorInterestFacade tutorInterestFacade;
	
	 @PostMapping("/create")
		public ResponseEntity<Object> saveTutorInterest(@RequestBody final RequestSaveTutorInterestDto request) {
			String id = tutorInterestFacade.saveTutorInterest(request);
			return ResponseHandler.getResponse(id, HttpStatus.OK);
		}
	   
	   @PutMapping("/update")
	 	public ResponseEntity<Object> updateTutorInterest(@RequestBody final RequestUpdateTutorInvitationDto request) {
	 		String id = tutorInterestFacade.updateTutorInterest(request);
	 		return ResponseHandler.getResponse(id, HttpStatus.OK);
	 	}
	   
	   @DeleteMapping("/delete-by-id/{id}")
	  	public ResponseEntity<Object> deleteTutorInterest(@PathVariable("id") String id) {
		   tutorInterestFacade.deleteTutorInterestById(id);
	  		return ResponseHandler.getResponse("deleted", HttpStatus.OK);
	  	}
	   
	   @GetMapping("/find-all")
		public ResponseEntity<Object> findByTutorInterest() {
			List<ResponseTutorInterestDto> tutorInterests = tutorInterestFacade.findAllTutorInterest();
			return ResponseHandler.getResponse(tutorInterests, HttpStatus.OK);
		}
	   
	   @GetMapping("/find-by-id/{id}")
		public ResponseEntity<Object> findByTutorInterestById(@PathVariable("id") String id) {
			ResponseTutorInterestDto tutorInterest = tutorInterestFacade.findTutorInterestById(id);
			return ResponseHandler.getResponse(tutorInterest, HttpStatus.OK);
		}

}
