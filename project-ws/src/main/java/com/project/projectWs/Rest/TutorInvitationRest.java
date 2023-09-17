package com.project.projectWs.rest;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.common.utils.ResponseHandler;
import com.project.projectWs.dto.RequestEmailInvitationToTutor;
import com.project.projectWs.dto.RequestSaveTutorInvitationDto;
import com.project.projectWs.dto.ResponseTutorInvitationDto;
import com.project.projectWs.facade.TutorInvitationFacade;
import com.project.projectWs.utils.Routes;

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

//	@PutMapping("/update")
//	public ResponseEntity<Object> updateTutorInvitation(@RequestBody final RequestUpdateTutorInvitationDto request) {
//		String id = tutorInvitationFacade.updateTutorInvitation(request);
//		return ResponseHandler.getResponse(id, HttpStatus.OK);
//	}

	@DeleteMapping("/delete-by-id/{id}")
	public ResponseEntity<Object> deleteTutorInvitation(@PathVariable("id") String id) {
		tutorInvitationFacade.deleteTutorInvitationById(id);
		return ResponseHandler.getResponse("deleted", HttpStatus.OK);
	}

	@GetMapping("/find-all-by-tutor-id/{tutorId}")
	public ResponseEntity<Object> findByTutorInvitation(@PathVariable("tutorId") Long id) {
		List<ResponseTutorInvitationDto> tutorInvitations = tutorInvitationFacade.findTutorInvitation(id);
		return ResponseHandler.getResponse(tutorInvitations, HttpStatus.OK);
	}

//	@GetMapping("/find-by-id/{id}")
//	public ResponseEntity<Object> findByInvitationById(@PathVariable("id") String id) {
//		ResponseTutorInvitationDto tutorInvitation = tutorInvitationFacade.findTutorInterestById(id);
//		return ResponseHandler.getResponse(tutorInvitation, HttpStatus.OK);
//	}

	@PostMapping("/send-request")
	public ResponseEntity<Object> sendRequestInvitation(@RequestBody RequestEmailInvitationToTutor request)
			throws UnsupportedEncodingException, MessagingException {
		String tutorInvitation = tutorInvitationFacade.sendRequest(request);
		return ResponseHandler.getResponse(tutorInvitation, HttpStatus.OK);
	}

}
