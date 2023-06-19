package com.project.projectWs.Rest;

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
import com.project.projectWs.Utils.Routes;
import com.project.projectWs.dto.RequestSaveTutorInvitationDto;
import com.project.projectWs.dto.RequestUpdateTutorInvitationDto;
import com.project.projectWs.dto.ResponseTutorInvitationDto;
import com.project.projectWs.facade.TutorInvitationFacade;

@RestController
@RequestMapping(value = Routes.TUTOR_INVITATION)
public class TutorInvitationRest {

   @Autowired
   private TutorInvitationFacade tutorInvitationFacade;
   
   @PostMapping("/create")
	public ResponseEntity<Object> saveTutorInvitation(@RequestBody final RequestSaveTutorInvitationDto request) {
		String id = tutorInvitationFacade.saveTutorInvitation(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}
   
   @PutMapping("/update")
 	public ResponseEntity<Object> updateTutorInvitation(@RequestBody final RequestUpdateTutorInvitationDto request) {
 		String id = tutorInvitationFacade.updateTutorInvitation(request);
 		return ResponseHandler.getResponse(id, HttpStatus.OK);
 	}
   
   @DeleteMapping("/delete-by-id/{id}")
  	public ResponseEntity<Object> deleteTutorInvitation(@PathVariable("id") String id) {
  		tutorInvitationFacade.deleteTutorInvitationById(id);
  		return ResponseHandler.getResponse("deleted", HttpStatus.OK);
  	}
   
   @GetMapping("/find-all")
	public ResponseEntity<Object> findByTutorInvitation() {
		List<ResponseTutorInvitationDto> tutorInvitations = tutorInvitationFacade.findTutorInvitation();
		return ResponseHandler.getResponse(tutorInvitations, HttpStatus.OK);
	}
   
   @GetMapping("/find-by-id/{id}")
	public ResponseEntity<Object> findByInvitationById(@PathVariable("id") String id) {
		ResponseTutorInvitationDto tutorInvitation = tutorInvitationFacade.findTutorInterestById(id);
		return ResponseHandler.getResponse(tutorInvitation, HttpStatus.OK);
	}
   
	
}
