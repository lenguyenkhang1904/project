package com.project.projectWs.Rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.common.utils.HandleCharacter;
import com.project.common.utils.ResponseHandler;
import com.project.location.dto.AreaDto;
import com.project.person.dto.TutorDto;
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
		List<ResponseTutor> tutorDtos = tutorFacade.findAllTutor();
		return ResponseHandler.getResponse(tutorDtos, HttpStatus.OK);
	}
	
	@GetMapping("/find-by-tutor-code/{tutorCode}")
	public ResponseEntity<Object> findByTutorCode(@RequestParam("tutorCode") Long tutorCode) {

		TutorDto tutor = tutorFacade.findByTutorCode(tutorCode);

		if (tutor == null)
			return ResponseHandler.getResponse("cant find any tutors", HttpStatus.BAD_REQUEST);

		return ResponseHandler.getResponse(tutor, HttpStatus.OK);
	}

	@GetMapping("/find-by-phone-number/{phoneNumber}")
	public ResponseEntity<Object> findByPhones(@RequestParam("phoneNumber") String phoneNumber) {

		List<TutorDto> tutors = tutorFacade.findByPhoneNumber(phoneNumber);

		if (tutors.isEmpty())
			return ResponseHandler.getResponse("cant find any tutors", HttpStatus.BAD_REQUEST);

		return ResponseHandler.getResponse(tutors, HttpStatus.OK);

	}

	@GetMapping("/find-by-end-phone-number/{endPhoneNumber}")
	public ResponseEntity<Object> findByEndPhone(@RequestParam("endPhoneNumber") String endPhoneNumber) {

		List<TutorDto> tutors = tutorFacade.findByEndPhoneNumber(endPhoneNumber);

		if (tutors.isEmpty())
			return ResponseHandler.getResponse("cant find any tutors", HttpStatus.BAD_REQUEST);

		return ResponseHandler.getResponse(tutors, HttpStatus.OK);

	}

	@GetMapping("/find-by-full-name/{fullName}")
	public ResponseEntity<Object> findByFullnameAndReturnObject(@RequestParam("fullName") String fullName) {

		List<TutorDto> tutors = tutorFacade.findByFullNameContain(fullName.toUpperCase());

		if (tutors.isEmpty()) {
			List<TutorDto> tutorsByEngName = tutorFacade
					.findByEnglishFullName(HandleCharacter.removeAccent(fullName.toUpperCase()));
			if (tutorsByEngName.isEmpty())
				return ResponseHandler.getResponse("cant find any tutors", HttpStatus.BAD_REQUEST);
			return ResponseHandler.getResponse(tutorsByEngName, HttpStatus.OK);
		}

		return ResponseHandler.getResponse(tutors, HttpStatus.OK);

	}

	@GetMapping("/find-by-fullname-and-return-name/{fullNameShowName}")
	public ResponseEntity<Object> findByFullnameAndReturnFullName(
			@RequestParam("fullNameShowName") String fullNameShowName) {

		List<String> tutorNames = tutorFacade.findByfullnameAndShowFullName(fullNameShowName.toUpperCase());

		if (tutorNames.isEmpty()) {
			List<String> tutorEngNames = tutorFacade.findByEngfullnameAndShowFullName(
					HandleCharacter.removeAccent(fullNameShowName.toUpperCase()));
			if (tutorEngNames.isEmpty())
				return ResponseHandler.getResponse("cant find any tutors", HttpStatus.BAD_REQUEST);
			return ResponseHandler.getResponse(tutorEngNames, HttpStatus.OK);
		}

		return ResponseHandler.getResponse(tutorNames, HttpStatus.OK);

	}


//	@GetMapping("/findAllTutorForWeb")
//	public ResponseEntity<Object> findAllTutorForWeb() {
//		List<TutorForWebDto> list = iTutorService.findAllTutorForWeb();
//		if (list.isEmpty())
//			return ResponseHandler.getResponse("No content", HttpStatus.BAD_REQUEST);
//
//		return ResponseHandler.getResponse(list, HttpStatus.OK);
//	}

}
