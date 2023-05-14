package com.project.projectWs.Rest;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.project.common.utils.ResponseHandler;
import com.project.projectWs.Utils.Routes;
import com.project.projectWs.facade.RegisterAndLearnerFacade;
import com.project.projectWs.facade.StorageFacade;

import come.project.storage.utils.ConstaintInformationStorage;

@RestController
@RequestMapping(value = Routes.REGISTER_AND_LEARNER)
public class RegisterAndLearnerRest {
	
	@Autowired
	private RegisterAndLearnerFacade registerAndLearnerFacade;
	
	@Autowired
	private StorageFacade storageFacade;
	
	
	@PostMapping("/create-or-update-register-and-learner-avatar/{registerAndLearnerId}")
	public ResponseEntity<Object> uploadOrUpdate(@RequestParam("file") MultipartFile file,
			@PathVariable("registerAndLearnerId") String registerAndLearnerId) throws IOException {

		String filename = StringUtils.cleanPath(file.getOriginalFilename());

		if (filename.contains(".jpeg") || filename.contains(".jpg") || filename.contains(".png")) {

			String awsAvatarURL = registerAndLearnerFacade.createOrUpdateRegisterAndLearnerAvatar(file, registerAndLearnerId);

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
				}
				else
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
				}
				else
					return ResponseHandler.getResponse("You have to upload files which have type of .jpg, .png, .jpeg ",
							HttpStatus.BAD_REQUEST);
			}
			return ResponseHandler.getResponse("Upload files successfully", HttpStatus.CREATED);
	}

	@DeleteMapping("/delete-register-and-learner-avatar/{urlPic}")
	public ResponseEntity<Object> deleteRegisterAndLearnerAvatar(@PathVariable("urlPic") String urlPic) {
		String registerAndLearnerAvatarURL = ConstaintInformationStorage.REGISTER_AND_LEARNER_AVATAR_URL;
		if (!storageFacade.checkExistObjectinS3RegisterAndLearner(urlPic))
			return ResponseHandler.getResponse("Don't have any url and id", HttpStatus.BAD_REQUEST);

		registerAndLearnerFacade.deleteAvatarOfRegisterAndLearner(registerAndLearnerAvatarURL + urlPic);

		return ResponseHandler.getResponse("Delete Successfully", HttpStatus.OK);
	}

	@DeleteMapping("/delete-register-and-learner-private-img/{urlPic}")
	public ResponseEntity<Object> deleteRegisterAndLearnerPrivateImg(@PathVariable("urlPic") String urlPic) {
		final String registerAndLearnerPrivateimgsURL = ConstaintInformationStorage.REGISTER_AND_LEARNER_PRIVATE_IMGS_URL;
		if (!storageFacade.checkExistObjectinS3RegisterAndLearner(urlPic))
			return ResponseHandler.getResponse("Don't have any url and id", HttpStatus.BAD_REQUEST);
		registerAndLearnerFacade.deleteByFileNameAndIDPrivateImgs(registerAndLearnerPrivateimgsURL + urlPic);
		return ResponseHandler.getResponse("Delete Successfully", HttpStatus.OK);
	}

	@DeleteMapping("/delete-register-and-learner-public-img/{nameFile}")
	public ResponseEntity<Object> deleteRegisterAndLearnerPublicImg(@PathVariable("urlPic") String urlPic) {

		final String registerAndLearnerPublicImgsURL = ConstaintInformationStorage.REGISTER_AND_LEARNER_PUBLIC_IMGS_URL;
		if (!storageFacade.checkExistObjectPublicInS3RegisterAndLearner(urlPic))
			return ResponseHandler.getResponse("Don't have any url and id", HttpStatus.BAD_REQUEST);
		registerAndLearnerFacade.deleteByFileNameAndIDPublicImgs(registerAndLearnerPublicImgsURL + urlPic);
		return ResponseHandler.getResponse("Delete Successfully", HttpStatus.OK);
	}
	
	@PutMapping("/update-register-and-learner-privateImg/{nameFile}")
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

	@PutMapping("/update-register-and-learner-public-img/{nameFile}")
	public ResponseEntity<Object> updatePublicImg(@RequestParam("file") MultipartFile file,
			@PathVariable("nameFile") String nameFile) throws IOException {
		String filename = StringUtils.cleanPath(file.getOriginalFilename());
		if (filename.contains(".jpeg") || filename.contains(".jpg") || filename.contains(".png")) {
			String awsAvatarURL = registerAndLearnerFacade.updatePublicImageToAmazon(file, nameFile);

			return ResponseHandler.getResponse(awsAvatarURL, HttpStatus.CREATED);
		}
		else
			return ResponseHandler.getResponse("You have to upload files which have type of .jpg, .png, .jpeg ",
					HttpStatus.BAD_REQUEST);
	}
}
