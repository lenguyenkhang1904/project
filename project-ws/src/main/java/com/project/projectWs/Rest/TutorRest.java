package com.project.projectWs.Rest;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.project.common.utils.HandleCharacter;
import com.project.common.utils.ResponseHandler;
import com.project.person.dto.TutorDto;
import com.project.projectWs.Utils.Routes;
import com.project.projectWs.dto.RequestSaveTutor;
import com.project.projectWs.dto.RequestUpdateTutor;
import com.project.projectWs.dto.RequestUpdateTutorCalendarDto;
import com.project.projectWs.dto.RequestUpdateTutorNowLevelAndUpdateAtDto;
import com.project.projectWs.dto.RequestUpdateTutorSubjectGroupForSureDto;
import com.project.projectWs.dto.RequestUpdateTutorSubjectGroupMaybeDto;
import com.project.projectWs.dto.ResponseTutor;
import com.project.projectWs.facade.StorageFacade;
import com.project.projectWs.facade.TutorFacade;

import come.project.storage.utils.ConstaintInformationStorage;

@RestController
@RequestMapping(value = Routes.TUTOR)
public class TutorRest {

	@Autowired
	private TutorFacade tutorFacade;

	@Autowired
	private StorageFacade storageFacade;

	@PostMapping("/create")
	public ResponseEntity<Object> saveTutor(@RequestBody final RequestSaveTutor request) {
		Long id = tutorFacade.saveTutor(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}

	@GetMapping("/find-all")
	public ResponseEntity<Object> findAllTutor() {
		List<ResponseTutor> tutorDtos = tutorFacade.findAllTutor();
		return ResponseHandler.getResponse(tutorDtos, HttpStatus.OK);
	}

	@GetMapping("/find-by-tutor-code/{tutorCode}")
	public ResponseEntity<Object> findByTutorCode(@RequestParam("tutorCode") Long tutorCode) {
		ResponseTutor tutor = tutorFacade.findByTutorCode(tutorCode);
		if (tutor == null)
			return ResponseHandler.getResponse("cant find any tutors", HttpStatus.BAD_REQUEST);
		return ResponseHandler.getResponse(tutor, HttpStatus.OK);
	}

	@GetMapping("/find-by-phone-number/{phoneNumber}")
	public ResponseEntity<Object> findByPhones(@RequestParam("phoneNumber") String phoneNumber) {
		List<ResponseTutor> tutors = tutorFacade.findByPhoneNumber(phoneNumber);
		if (tutors.isEmpty())
			return ResponseHandler.getResponse("cant find any tutors", HttpStatus.BAD_REQUEST);
		return ResponseHandler.getResponse(tutors, HttpStatus.OK);
	}

	@GetMapping("/find-by-end-phone-number/{endPhoneNumber}")
	public ResponseEntity<Object> findByEndPhone(@RequestParam("endPhoneNumber") String endPhoneNumber) {
		List<ResponseTutor> tutors = tutorFacade.findByEndPhoneNumber(endPhoneNumber);
		if (tutors.isEmpty())
			return ResponseHandler.getResponse("cant find any tutors", HttpStatus.BAD_REQUEST);
		return ResponseHandler.getResponse(tutors, HttpStatus.OK);
	}

	@GetMapping("/find-by-full-name/{fullName}")
	public ResponseEntity<Object> findByFullnameAndReturnObject(@RequestParam("fullName") String fullName) {
		List<ResponseTutor> tutors = tutorFacade.findByFullNameContain(fullName.toUpperCase());
		if (tutors.isEmpty()) {
			List<ResponseTutor> tutorsByEngName = tutorFacade
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
			List<String> tutorEngNames = tutorFacade
					.findByEngfullnameAndShowFullName(HandleCharacter.removeAccent(fullNameShowName.toUpperCase()));
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

	@PostMapping("/create-or-update-avatar/{tutorCode}")
	public ResponseEntity<Object> uploadOrUpdate(@RequestParam("file") MultipartFile file,
			@PathVariable("tutorCode") String tutorCode) throws IOException {

		String filename = StringUtils.cleanPath(file.getOriginalFilename());

		if (filename.contains(".jpeg") || filename.contains(".jpg") || filename.contains(".png")) {

			String awsAvatarURL = tutorFacade.createOrUpdateTutorAvatar(file, tutorCode);

			return ResponseHandler.getResponse(awsAvatarURL, HttpStatus.CREATED);
		}

		else
			return ResponseHandler.getResponse("You have to upload files which have type of .jpg, .png, .jpeg ",
					HttpStatus.BAD_REQUEST);

	}

	@PostMapping("/create-or-update-public-img/{tutorCode}")
	public ResponseEntity<Object> uploadOrUpdatePublicImgs(@RequestParam("file") MultipartFile file,
			@PathVariable("tutorCode") String tutorCode) throws IOException {
		String filename = StringUtils.cleanPath(file.getOriginalFilename());

		if (filename.contains(".jpeg") || filename.contains(".jpg") || filename.contains(".png")) {
			String url = tutorFacade.uploadOrUpdatePublicImg(file, tutorCode);
			return ResponseHandler.getResponse(url, HttpStatus.CREATED);
		}
		return ResponseHandler.getResponse("You have to upload files which have type of .jpg, .png, .jpeg ",
				HttpStatus.BAD_REQUEST);
	}

	@PostMapping("/create-or-update-private-img/{tutorCode}")
	public ResponseEntity<Object> uploadOrUpdatePrivateImgs(@RequestParam("file") MultipartFile file,
			@PathVariable("tutorCode") String tutorCode) throws IOException {
		String filename = StringUtils.cleanPath(file.getOriginalFilename());

		if (filename.contains(".jpeg") || filename.contains(".jpg") || filename.contains(".png")) {
			String url = tutorFacade.uploadOrUpdatePrivateImg(file, tutorCode);
			return ResponseHandler.getResponse(url, HttpStatus.CREATED);
		}
		return ResponseHandler.getResponse("You have to upload files which have type of .jpg, .png, .jpeg ",
				HttpStatus.BAD_REQUEST);
	}

	@PostMapping("/create-or-update-multiple-private-imgs/{tutorCode}")
	public ResponseEntity<Object> uploadMutiplePrivateImgs(@RequestParam("files") MultipartFile[] files,
			@PathVariable("tutorCode") String tutorCode) throws IOException {
		int count = 0;
		for (MultipartFile file : files) {
			String filename = StringUtils.cleanPath(file.getOriginalFilename());
			if (filename.contains(".jpeg") || filename.contains(".jpg") || filename.contains(".png")) {
				count += 1;
				tutorFacade.uploadImageToAmazonPrivateImgs(file, tutorCode + "Private" + String.valueOf(count));
			} else
				return ResponseHandler.getResponse("You have to upload files which have type of .jpg, .png, .jpeg ",
						HttpStatus.BAD_REQUEST);
		}
		return ResponseHandler.getResponse("Upload files successfully", HttpStatus.CREATED);
	}

	@PostMapping("/create-or-update-multiple-public-imgs/{tutorCode}")
	public ResponseEntity<Object> uploadMutiplePubliImgs(@RequestParam("files") MultipartFile[] files,
			@PathVariable("tutorCode") String tutorCode) throws IOException {
		int count = 0;
		for (MultipartFile file : files) {
			String filename = StringUtils.cleanPath(file.getOriginalFilename());
			if (filename.contains(".jpeg") || filename.contains(".jpg") || filename.contains(".png")) {
				count += 1;
				tutorFacade.uploadImageToAmazonPubclicImgs(file, tutorCode + "Public" + String.valueOf(count));
			} else
				return ResponseHandler.getResponse("You have to upload files which have type of .jpg, .png, .jpeg ",
						HttpStatus.BAD_REQUEST);
		}
		return ResponseHandler.getResponse("Upload files successfully", HttpStatus.CREATED);
	}

	@DeleteMapping("/delete-avatar/{urlPic}")
	public ResponseEntity<Object> deleteTutorAvatar(@PathVariable("urlPic") String urlPic) {
		String tutorAvatarURL = ConstaintInformationStorage.TUTOR_AVATAR_URL;
		if (!storageFacade.checkExistObjectinS3Tutor(urlPic))
			return ResponseHandler.getResponse("Don't have any url and id", HttpStatus.BAD_REQUEST);
		tutorFacade.deleteAvatarOfTutor(tutorAvatarURL + urlPic);
		return ResponseHandler.getResponse("Delete Successfully", HttpStatus.OK);
	}

	@DeleteMapping("/delete-private-img/{urlPic}")
	public ResponseEntity<Object> deleteTutorPrivateImg(@PathVariable("urlPic") String urlPic) {
		final String tutorPrivateimgsURL = ConstaintInformationStorage.TUTOR_PRIVATE_IMGS_URL;
		if (!storageFacade.checkExistObjectPrivateInS3Tutor(urlPic))
			return ResponseHandler.getResponse("Don't have any url and id", HttpStatus.BAD_REQUEST);
		tutorFacade.deleteByFileNameAndIDPrivateImgs(tutorPrivateimgsURL + urlPic);
		return ResponseHandler.getResponse("Delete Successfully", HttpStatus.OK);
	}

	@DeleteMapping("/delete-public-img/{nameFile}")
	public ResponseEntity<Object> deleteTutorPublicImg(@PathVariable("urlPic") String urlPic) {
		final String tutorPublicImgsURL = ConstaintInformationStorage.TUTOR_PUBLIC_IMGS_URL;
		if (!storageFacade.checkExistObjectPublicInS3Tutor(urlPic))
			return ResponseHandler.getResponse("Don't have any url and id", HttpStatus.BAD_REQUEST);
		tutorFacade.deleteByFileNameAndIDPublicImgs(tutorPublicImgsURL + urlPic);
		return ResponseHandler.getResponse("Delete Successfully", HttpStatus.OK);
	}

	@PutMapping("/update-privateImg/{nameFile}")
	public ResponseEntity<Object> UpdatePrivateImg(@RequestParam("file") MultipartFile file,
			@PathVariable("nameFile") String nameFile) throws IOException {
		String filename = StringUtils.cleanPath(file.getOriginalFilename());
		if (filename.contains(".jpeg") || filename.contains(".jpg") || filename.contains(".png")) {
			String awsAvatarURL = tutorFacade.updatePrivateImageToAmazon(file, nameFile);
			return ResponseHandler.getResponse(awsAvatarURL, HttpStatus.CREATED);
		} else
			return ResponseHandler.getResponse("You have to upload files which have type of .jpg, .png, .jpeg ",
					HttpStatus.BAD_REQUEST);
	}

	@PutMapping("/update-public-img/{nameFile}")
	public ResponseEntity<Object> updatePublicImg(@RequestParam("file") MultipartFile file,
			@PathVariable("nameFile") String nameFile) throws IOException {
		String filename = StringUtils.cleanPath(file.getOriginalFilename());
		if (filename.contains(".jpeg") || filename.contains(".jpg") || filename.contains(".png")) {
			String awsAvatarURL = tutorFacade.updatePublicImageToAmazon(file, nameFile);

			return ResponseHandler.getResponse(awsAvatarURL, HttpStatus.CREATED);
		} else
			return ResponseHandler.getResponse("You have to upload files which have type of .jpg, .png, .jpeg ",
					HttpStatus.BAD_REQUEST);
	}

	@GetMapping("/find-by-id/{id}")
	public ResponseEntity<Object> findByid(@PathVariable("id") final Long id) {
		TutorDto tutor = tutorFacade.findById(id);
		return ResponseHandler.getResponse(tutor, HttpStatus.OK);
	}

	@PutMapping("/update-subject-group-for-sure")
	public ResponseEntity<Object> updateSubjectGroupForSure(@RequestBody RequestUpdateTutorSubjectGroupForSureDto dto,
			BindingResult errors) {
		Long tutor = tutorFacade.updateSubjectGroupForSure(dto);
		if (errors.hasErrors()) {
			return ResponseHandler.getResponse(errors, HttpStatus.BAD_REQUEST);
		}
		return ResponseHandler.getResponse(tutor, HttpStatus.OK);
	}

	@PutMapping("/update-subject-group-maybe")
	public ResponseEntity<Object> updateSubjectGroupMaybe(@RequestBody RequestUpdateTutorSubjectGroupMaybeDto dto,
			BindingResult errors) {
		Long tutor = tutorFacade.updateSubjetGroupMaybe(dto);
		if (errors.hasErrors()) {
			return ResponseHandler.getResponse(errors, HttpStatus.BAD_REQUEST);
		}
		return ResponseHandler.getResponse(tutor, HttpStatus.OK);
	}

	@PutMapping("/update-now-level-and-now-update-at")
	public ResponseEntity<Object> updateNowLevelAndNowUpdateAt(
			@RequestBody RequestUpdateTutorNowLevelAndUpdateAtDto dto, BindingResult errors) {
		Long tutor = tutorFacade.updateNowLevelAndNowUpdateAt(dto);
		if (errors.hasErrors()) {
			return ResponseHandler.getResponse(errors, HttpStatus.BAD_REQUEST);
		}
		return ResponseHandler.getResponse(tutor, HttpStatus.OK);
	}

	@PutMapping("/update-calendar")
	public ResponseEntity<Object> updateCalendar(@RequestBody RequestUpdateTutorCalendarDto dto, BindingResult errors) {
		Long tutor = tutorFacade.updateCalendar(dto);
		if (errors.hasErrors()) {
			return ResponseHandler.getResponse(errors, HttpStatus.BAD_REQUEST);
		}
		return ResponseHandler.getResponse(tutor, HttpStatus.OK);
	}
	
	@PutMapping("/update")
	public ResponseEntity<Object> updateTutor(@RequestBody final RequestUpdateTutor request) {
		Long id = tutorFacade.updateTutor(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}

}
