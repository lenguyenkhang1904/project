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

import com.project.common.utils.HandleCharacter;
import com.project.common.utils.ResponseHandler;
import com.project.projectWs.dto.RequestSaveResigterAndLearnerDto;
import com.project.projectWs.dto.RequestUpdateResigterAndLearnerDto;
import com.project.projectWs.dto.ResponseRegisterAndLearnerDto;
import com.project.projectWs.facade.RegisterAndLearnerFacade;
import com.project.projectWs.facade.StorageFacade;
import com.project.projectWs.utils.Routes;

import come.project.storage.utils.ConstantInformationStorage;

@RestController
@RequestMapping(value = Routes.REGISTER_AND_LEARNER)
public class RegisterAndLearnerRest {

	@Autowired
	private RegisterAndLearnerFacade registerAndLearnerFacade;

	@Autowired
	private StorageFacade storageFacade;

	@PostMapping("/create-or-update-avatar/{registerAndLearnerId}")
	public ResponseEntity<Object> uploadOrUpdate(@RequestParam("file") MultipartFile file,
			@PathVariable("registerAndLearnerId") String registerAndLearnerId) throws IOException {

		String filename = StringUtils.cleanPath(file.getOriginalFilename());

		if (filename.contains(".jpeg") || filename.contains(".jpg") || filename.contains(".png")) {

			String awsAvatarURL = registerAndLearnerFacade.createOrUpdateRegisterAndLearnerAvatar(file,
					registerAndLearnerId);

			return ResponseHandler.getResponse(awsAvatarURL, HttpStatus.CREATED);
		}

		else
			return ResponseHandler.getResponse("You have to upload files which have type of .jpg, .png, .jpeg ",
					HttpStatus.BAD_REQUEST);

	}

	@PostMapping("/create-or-update-public-img/{registerAndLearnerId}")
	public ResponseEntity<Object> uploadOrUpdatePublicImgs(@RequestParam("file") MultipartFile file,
			@PathVariable("registerAndLearnerId") String registerAndLearnerId) throws IOException {
		String filename = StringUtils.cleanPath(file.getOriginalFilename());

		if (filename.contains(".jpeg") || filename.contains(".jpg") || filename.contains(".png")) {
			String url = registerAndLearnerFacade.uploadOrUpdatePublicImg(file, registerAndLearnerId);
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
			String url = registerAndLearnerFacade.uploadOrUpdatePrivateImg(file, registerAndLearnerId);
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
				registerAndLearnerFacade.uploadImageToAmazonPrivateImgs(file,
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
				registerAndLearnerFacade.uploadImageToAmazonPubclicImgs(file,
						registerAndLearnerId + "Public" + String.valueOf(count));
			} else
				return ResponseHandler.getResponse("You have to upload files which have type of .jpg, .png, .jpeg ",
						HttpStatus.BAD_REQUEST);
		}
		return ResponseHandler.getResponse("Upload files successfully", HttpStatus.CREATED);
	}

	@DeleteMapping("/delete-avatar/{nameFile}")
	public ResponseEntity<Object> deleteRegisterAndLearnerAvatar(@PathVariable("nameFile") String urlPic) {
		String registerAndLearnerAvatarURL = ConstantInformationStorage.REGISTER_AND_LEARNER_AVATAR_URL;
		if (!storageFacade.checkExistObjectinS3RegisterAndLearner(urlPic))
			return ResponseHandler.getResponse("Don't have any url and id", HttpStatus.BAD_REQUEST);

		registerAndLearnerFacade.deleteAvatarOfRegisterAndLearner(registerAndLearnerAvatarURL + urlPic);

		return ResponseHandler.getResponse("Delete Successfully", HttpStatus.OK);
	}

	@DeleteMapping("/delete-private-img/{nameFile}")
	public ResponseEntity<Object> deleteRegisterAndLearnerPrivateImg(@PathVariable("nameFile") String urlPic) {
		final String registerAndLearnerPrivateimgsURL = ConstantInformationStorage.REGISTER_AND_LEARNER_PRIVATE_IMGS_URL;
		if (!storageFacade.checkExistObjectPrivateInS3RegisterAndLearner(urlPic))
			return ResponseHandler.getResponse("Don't have any url and id", HttpStatus.BAD_REQUEST);
		registerAndLearnerFacade.deleteByFileNameAndIDPrivateImgs(registerAndLearnerPrivateimgsURL + urlPic);
		return ResponseHandler.getResponse("Delete Successfully", HttpStatus.OK);
	}

	@DeleteMapping("/delete-public-img/{nameFile}")
	public ResponseEntity<Object> deleteRegisterAndLearnerPublicImg(@PathVariable("nameFile") String urlPic) {

		final String registerAndLearnerPublicImgsURL = ConstantInformationStorage.REGISTER_AND_LEARNER_PUBLIC_IMGS_URL;
		if (!storageFacade.checkExistObjectPublicInS3RegisterAndLearner(urlPic))
			return ResponseHandler.getResponse("Don't have any url and id", HttpStatus.BAD_REQUEST);
		registerAndLearnerFacade.deleteByFileNameAndIDPublicImgs(registerAndLearnerPublicImgsURL + urlPic);
		return ResponseHandler.getResponse("Delete Successfully", HttpStatus.OK);
	}

	@PutMapping("/update-private-img/{nameFile}")
	public ResponseEntity<Object> UpdatePrivateImg(@RequestParam("file") MultipartFile file,
			@PathVariable("nameFile") String nameFile) throws IOException {
		String filename = StringUtils.cleanPath(file.getOriginalFilename());
		if (filename.contains(".jpeg") || filename.contains(".jpg") || filename.contains(".png")) {
			String awsAvatarURL = registerAndLearnerFacade.updatePrivateImageToAmazon(file, nameFile);
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
			String awsAvatarURL = registerAndLearnerFacade.updatePublicImageToAmazon(file, nameFile);

			return ResponseHandler.getResponse(awsAvatarURL, HttpStatus.CREATED);
		} else
			return ResponseHandler.getResponse("You have to upload files which have type of .jpg, .png, .jpeg ",
					HttpStatus.BAD_REQUEST);
	}

	@GetMapping("/find-by-phone-number/{phoneNumber}")
	public ResponseEntity<Object> findByPhones(@RequestParam("phoneNumber") String phoneNumber) {
		List<ResponseRegisterAndLearnerDto> registerAndLearnerDtos = registerAndLearnerFacade
				.findByPhoneNumber(phoneNumber);
		if (registerAndLearnerDtos.isEmpty())
			return ResponseHandler.getResponse("cant find any registerAndLearner", HttpStatus.BAD_REQUEST);
		return ResponseHandler.getResponse(registerAndLearnerDtos, HttpStatus.OK);
	}

	@GetMapping("/find-by-end-phone-number/{endPhoneNumber}")
	public ResponseEntity<Object> findByEndPhone(@RequestParam("endPhoneNumber") String endPhoneNumber) {
		List<ResponseRegisterAndLearnerDto> registerAndLearnerDtos = registerAndLearnerFacade
				.findByEndPhoneNumber(endPhoneNumber);
		if (registerAndLearnerDtos.isEmpty())
			return ResponseHandler.getResponse("cant find any registerAndLearner", HttpStatus.BAD_REQUEST);
		return ResponseHandler.getResponse(registerAndLearnerDtos, HttpStatus.OK);
	}

	@GetMapping("/find-by-full-name-and-return-object/{fullName}")
	public ResponseEntity<Object> findByFullnameAndReturnObject(@RequestParam("fullName") String fullName) {
		List<ResponseRegisterAndLearnerDto> registerAndLearnerDtos = registerAndLearnerFacade
				.findByEnglishFullNameContaining(fullName.toUpperCase());
		if (registerAndLearnerDtos.isEmpty()) {
			List<ResponseRegisterAndLearnerDto> registerAndLearners = registerAndLearnerFacade
					.findByEnglishFullNameContaining(HandleCharacter.removeAccent(fullName.toUpperCase()));
			if (registerAndLearners.isEmpty())
				return ResponseHandler.getResponse("cant find any registerAndLearner", HttpStatus.BAD_REQUEST);
			return ResponseHandler.getResponse(registerAndLearners, HttpStatus.OK);
		}
		return ResponseHandler.getResponse(registerAndLearnerDtos, HttpStatus.OK);
	}

	@GetMapping("/find-by-full-name-and-return-full-name/{fullName}")
	public ResponseEntity<Object> findByFullnameAndReturnFullName(
			@RequestParam("fullName") String fullNameShowName) {

		List<String> tutorNames = registerAndLearnerFacade
				.findByfullnameAndShowFullName(fullNameShowName.toUpperCase());

		if (tutorNames.isEmpty()) {
			List<String> registerAndLearnerEngNames = registerAndLearnerFacade
					.findByfullnameAndShowFullName(HandleCharacter.removeAccent(fullNameShowName.toUpperCase()));
			if (registerAndLearnerEngNames.isEmpty())
				return ResponseHandler.getResponse("cant find any registerAndLearner", HttpStatus.BAD_REQUEST);
			return ResponseHandler.getResponse(registerAndLearnerEngNames, HttpStatus.OK);
		}
		return ResponseHandler.getResponse(tutorNames, HttpStatus.OK);
	}

	@GetMapping("/find-by-full-name-and-vocative-and-return-object/{fullname}/{vocative}")
	public ResponseEntity<Object> findByFullnameAndVocativeAndReturnObject(@RequestParam("fullname") String fullname,
			@RequestParam("vocative") String vocative) {
		List<ResponseRegisterAndLearnerDto> registerAndLearners = registerAndLearnerFacade
				.findByVocativeAndFullName(vocative, fullname.toUpperCase());
		if (registerAndLearners.isEmpty()) {
			List<ResponseRegisterAndLearnerDto> registerAndLearnersWithEnglishFullName = registerAndLearnerFacade
					.findByVocativeAndEnglishFullNameContaining(vocative,
							HandleCharacter.removeAccent(fullname.toUpperCase()));
			if (registerAndLearnersWithEnglishFullName.isEmpty())
				return ResponseHandler.getResponse("cant find any Register and Learner", HttpStatus.BAD_REQUEST);
			return ResponseHandler.getResponse(registerAndLearnersWithEnglishFullName, HttpStatus.OK);
		}
		return ResponseHandler.getResponse(registerAndLearners, HttpStatus.OK);
	}

	@GetMapping("/find-by-full-name-and-vocative-and-return-fullName/{fullname}/{vocative}")
	public ResponseEntity<Object> findByFullnameAndVocativeAndReturnFullName(@RequestParam("fullname") String fullname,
			@RequestParam("vocative") String vocative) {
		List<String> registerAndLearners = registerAndLearnerFacade.findByVocativeAndFullNameAndShowFullName(vocative,
				fullname.toUpperCase());
		if (registerAndLearners.isEmpty()) {
			List<String> RegisterAndLearnerServiceWithEnglishFullName = registerAndLearnerFacade
					.findByVocativeAndEnglishFullNameAndShowFullName(vocative,
							HandleCharacter.removeAccent(fullname.toUpperCase()));
			if (RegisterAndLearnerServiceWithEnglishFullName.isEmpty())
				return ResponseHandler.getResponse("cant find any Register and Learner", HttpStatus.OK);
			return ResponseHandler.getResponse(RegisterAndLearnerServiceWithEnglishFullName, HttpStatus.OK);
		}
		return ResponseHandler.getResponse(registerAndLearners, HttpStatus.OK);
	}

	@PostMapping("/create")
	public ResponseEntity<Object> createRegisterAndLearner(@RequestBody final RequestSaveResigterAndLearnerDto dto) {
		String registerAndLearnerId = registerAndLearnerFacade.save(dto);
		if (registerAndLearnerId == null)
			return ResponseHandler.getResponse(HttpStatus.BAD_REQUEST);
		return ResponseHandler.getResponse(registerAndLearnerId, HttpStatus.OK);
	}

	@PutMapping("/update-avatar/{nameFile}")
	public ResponseEntity<Object> updateAvatarRegisterAndLearner(@RequestParam("file") MultipartFile file,
			@PathVariable("nameFile") String nameFile) throws IOException {
		String filename = StringUtils.cleanPath(file.getOriginalFilename());
		if (filename.contains(".jpeg") || filename.contains(".jpg") || filename.contains(".png")) {
			String awsAvatarURL = registerAndLearnerFacade.createOrUpdateRegisterAndLearnerAvatar(file, nameFile);

			return ResponseHandler.getResponse(awsAvatarURL, HttpStatus.CREATED);
		} else
			return ResponseHandler.getResponse("You have to upload files which have type of .jpg, .png, .jpeg ",
					HttpStatus.BAD_REQUEST);
	}
	@GetMapping("/find-all")
	public ResponseEntity<Object> findAllRegisterAndLearners() {
		List<ResponseRegisterAndLearnerDto> dtos = registerAndLearnerFacade.findAll();
		return ResponseHandler.getResponse(dtos, HttpStatus.OK);
	}

	@GetMapping("/find-by-id/{id}")
	public ResponseEntity<Object> findByRegisterAndLearnerId(@PathVariable("id") String id) {
		ResponseRegisterAndLearnerDto dto = registerAndLearnerFacade.findByRegisterAndLearnerCode(id);
		if (dto == null)
			return ResponseHandler.getResponse("cant find any Register and Learner", HttpStatus.OK);
		return ResponseHandler.getResponse(dto, HttpStatus.OK);
	}

	@PutMapping("/update")
	public ResponseEntity<Object> updateRegisterAndLearner(@RequestBody final RequestUpdateResigterAndLearnerDto dto) {
		String registerAndLearnerId = registerAndLearnerFacade.update(dto);
		if (registerAndLearnerId == null)
			return ResponseHandler.getResponse(HttpStatus.BAD_REQUEST);
		return ResponseHandler.getResponse(registerAndLearnerId, HttpStatus.OK);
	}

}
