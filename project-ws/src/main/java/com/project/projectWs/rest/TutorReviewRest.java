package com.project.projectWs.rest;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.StringUtils;
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

import com.project.common.utils.ResponseHandler;
import com.project.projectWs.dto.RequestSaveTutorReviewDto;
import com.project.projectWs.dto.RequestUpdateTutorReviewDto;
import com.project.projectWs.dto.ResponseTutorReviewDto;
import com.project.projectWs.facade.StorageFacade;
import com.project.projectWs.facade.TutorReviewFacade;
import com.project.projectWs.utils.Routes;

import come.project.storage.utils.ConstantInformationStorage;

@RestController
@RequestMapping(value = Routes.TUTOR_REVIEW)
public class TutorReviewRest {

	@Autowired
	private TutorReviewFacade tutorReviewFacade;

	@Autowired
	private StorageFacade storageFacade;

	@PostMapping("/create")
	public ResponseEntity<Object> create(@RequestBody final RequestSaveTutorReviewDto request) {
		String id = tutorReviewFacade.createTutorReview(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}

	@PutMapping("/update")
	public ResponseEntity<Object> updateJob(@RequestBody final RequestUpdateTutorReviewDto request) {
		String id = tutorReviewFacade.updateTutorReview(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}

	@GetMapping("/find-all")
	public ResponseEntity<Object> findAll() {
		List<ResponseTutorReviewDto> dtos = tutorReviewFacade.findAll();
		return ResponseHandler.getResponse(dtos, HttpStatus.OK);
	}

	@GetMapping("/find-by-id/{id}")
	public ResponseEntity<Object> findById(@PathVariable("id") String id) {
		ResponseTutorReviewDto dto = tutorReviewFacade.findById(id);
		return ResponseHandler.getResponse(dto, HttpStatus.OK);
	}

	@PostMapping("/create-or-update-public-img/{registerAndLearnerId}")
	public ResponseEntity<Object> uploadOrUpdatePublicImgs(@RequestParam("file") MultipartFile file,
			@PathVariable("registerAndLearnerId") String registerAndLearnerId) throws IOException {
		String filename = StringUtils.cleanPath(file.getOriginalFilename());

		if (filename.contains(".jpeg") || filename.contains(".jpg") || filename.contains(".png")) {
			String url = tutorReviewFacade.uploadOrUpdatePublicImg(file, registerAndLearnerId);
			return ResponseHandler.getResponse(url, HttpStatus.CREATED);
		}
		return ResponseHandler.getResponse("You have to upload files which have type of .jpg, .png, .jpeg ",
				HttpStatus.BAD_REQUEST);
	}

	@PostMapping("/create-or-update-private-img/{registerAndLearnerId}")
	public ResponseEntity<Object> uploadOrUpdatePrivateImgs(@RequestParam("file") MultipartFile file,
			@PathVariable("registerAndLearnerId") String registerAndLearnerId) throws IOException {
		String filename = StringUtils.cleanPath(file.getOriginalFilename());

		if (filename.contains(".jpeg") || filename.contains(".jpg") || filename.contains(".png")) {
			String url = tutorReviewFacade.uploadOrUpdatePrivateImg(file, registerAndLearnerId);
			return ResponseHandler.getResponse(url, HttpStatus.CREATED);
		}
		return ResponseHandler.getResponse("You have to upload files which have type of .jpg, .png, .jpeg ",
				HttpStatus.BAD_REQUEST);
	}

	@PostMapping("/create-or-update-multiple-private-imgs/{registerAndLearnerId}")
	public ResponseEntity<Object> uploadMutiplePrivateImgs(@RequestParam("files") MultipartFile[] files,
			@PathVariable("registerAndLearnerId") String registerAndLearnerId) throws IOException {
		int count = 0;
		for (MultipartFile file : files) {
			String filename = StringUtils.cleanPath(file.getOriginalFilename());
			if (filename.contains(".jpeg") || filename.contains(".jpg") || filename.contains(".png")) {
				count += 1;
				tutorReviewFacade.uploadImageToAmazonPrivateImgs(file,
						registerAndLearnerId + "Private" + String.valueOf(count));
			} else
				return ResponseHandler.getResponse("You have to upload files which have type of .jpg, .png, .jpeg ",
						HttpStatus.BAD_REQUEST);
		}
		return ResponseHandler.getResponse("Upload files successfully", HttpStatus.CREATED);
	}

	@PostMapping("/create-or-update-multiple-public-imgs/{registerAndLearnerId}")
	public ResponseEntity<Object> uploadMutiplePubliImgs(@RequestParam("files") MultipartFile[] files,
			@PathVariable("registerAndLearnerId") String registerAndLearnerId) throws IOException {
		int count = 0;
		for (MultipartFile file : files) {
			String filename = StringUtils.cleanPath(file.getOriginalFilename());
			if (filename.contains(".jpeg") || filename.contains(".jpg") || filename.contains(".png")) {
				count += 1;
				tutorReviewFacade.uploadImageToAmazonPubclicImgs(file,
						registerAndLearnerId + "Public" + String.valueOf(count));
			} else
				return ResponseHandler.getResponse("You have to upload files which have type of .jpg, .png, .jpeg ",
						HttpStatus.BAD_REQUEST);
		}
		return ResponseHandler.getResponse("Upload files successfully", HttpStatus.CREATED);
	}

	@DeleteMapping("/delete-private-img/{urlPic}")
	public ResponseEntity<Object> deleteRegisterAndLearnerPrivateImg(@PathVariable("urlPic") String urlPic) {
		final String registerAndLearnerPrivateimgsURL = ConstantInformationStorage.PRIVATE_FEEDBACK_TUTOR_REVIEW_URL;
		if (!storageFacade.checkExistObjectinS3RegisterAndLearner(urlPic))
			return ResponseHandler.getResponse("Don't have any url and id", HttpStatus.BAD_REQUEST);
		tutorReviewFacade.deleteByFileNameAndIDPrivateImgs(registerAndLearnerPrivateimgsURL + urlPic);
		return ResponseHandler.getResponse("Delete Successfully", HttpStatus.OK);
	}

	@DeleteMapping("/delete-public-img/{nameFile}")
	public ResponseEntity<Object> deleteRegisterAndLearnerPublicImg(@PathVariable("urlPic") String urlPic) {

		final String registerAndLearnerPublicImgsURL = ConstantInformationStorage.PUBLIC_FEEDBACK_TUTOR_REVIEW_URL;
		if (!storageFacade.checkExistObjectPublicInS3RegisterAndLearner(urlPic))
			return ResponseHandler.getResponse("Don't have any url and id", HttpStatus.BAD_REQUEST);
		tutorReviewFacade.deleteByFileNameAndIDPublicImgs(registerAndLearnerPublicImgsURL + urlPic);
		return ResponseHandler.getResponse("Delete Successfully", HttpStatus.OK);
	}
	
	@PutMapping("/update-private-img/{nameFile}")
	public ResponseEntity<Object> UpdatePrivateImg(@RequestParam("file") MultipartFile file,
			@PathVariable("nameFile") String nameFile) throws IOException {
		String filename = StringUtils.cleanPath(file.getOriginalFilename());
		if (filename.contains(".jpeg") || filename.contains(".jpg") || filename.contains(".png")) {
			String awsAvatarURL = tutorReviewFacade.updatePrivateImageToAmazon(file, nameFile);
			return ResponseHandler.getResponse(awsAvatarURL, HttpStatus.CREATED);
		}

		else
			return ResponseHandler.getResponse("You have to upload files which have type of .jpg, .png, .jpeg ",
					HttpStatus.BAD_REQUEST);

	}

	@PutMapping("/update-public-img/{nameFile}")
	public ResponseEntity<Object> updatePublicImg(@RequestParam("file") MultipartFile file,
			@PathVariable("nameFile") String nameFile) throws IOException {
		String filename = StringUtils.cleanPath(file.getOriginalFilename());
		if (filename.contains(".jpeg") || filename.contains(".jpg") || filename.contains(".png")) {
			String awsAvatarURL = tutorReviewFacade.updatePublicImageToAmazon(file, nameFile);

			return ResponseHandler.getResponse(awsAvatarURL, HttpStatus.CREATED);
		} else
			return ResponseHandler.getResponse("You have to upload files which have type of .jpg, .png, .jpeg ",
					HttpStatus.BAD_REQUEST);
	}

}
