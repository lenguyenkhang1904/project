package com.project.projectWs.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.common.utils.ResponseHandler;
import com.project.projectWs.facade.TutorRequestFacade;
import com.project.projectWs.utils.Routes;
import com.project.request.dto.TutorRequestDto;

@RestController
@RequestMapping(value = Routes.TUTOR_REQUEST)
public class TutorRequestRest {
	
	@Autowired
	private TutorRequestFacade tutorRequestFacade;
	
	   @PostMapping("/create")
		public ResponseEntity<Object> saveTutorRequest(@RequestBody final TutorRequestDto request) {
			String id = tutorRequestFacade.saveTutorRequest(request);
			return ResponseHandler.getResponse(id, HttpStatus.OK);
		}
	   
//	   @PutMapping("/update")
//	 	public ResponseEntity<Object> updateTutorRequest(@RequestBody final TutorRequestDto request) {
//	 		String id = tutorRequestFacade.updateTutorRequest(request);
//	 		return ResponseHandler.getResponse(id, HttpStatus.OK);
//	 	}
	   
	   @DeleteMapping("/delete-by-id/{id}")
	   @PreAuthorize("hasAuthority('ADMINISTRATOR')")
	  	public ResponseEntity<Object> deleteTutorRequest(@PathVariable("id") String id) {
		   tutorRequestFacade.deleteById(id);
	  		return ResponseHandler.getResponse("deleted", HttpStatus.OK);
	  	}
	   
	   @GetMapping("/find-all-by-id/{tutorId}")
	   @PreAuthorize("hasAuthority('ADMINISTRATOR')")
		public ResponseEntity<Object> findByTutorRequest(@PathVariable("tutorId") Long tutorId) {
			List<TutorRequestDto> tutorInvitations = tutorRequestFacade.findAll(tutorId);
			return ResponseHandler.getResponse(tutorInvitations, HttpStatus.OK);
		}
	   
//	   @GetMapping("/find-by-id/{id}")
//		public ResponseEntity<Object> findByInvitationById(@PathVariable("id") String id) {
//		   TutorRequestDto tutorRequest = tutorRequestFacade.findById(id);
//			return ResponseHandler.getResponse(tutorRequest, HttpStatus.OK);
//		}
}
