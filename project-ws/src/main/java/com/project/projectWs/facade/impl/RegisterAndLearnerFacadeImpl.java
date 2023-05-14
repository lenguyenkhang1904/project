package com.project.projectWs.facade.impl;

import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.project.person.dto.RegisterAndLearnerDto;
import com.project.person.dto.TutorDto;
import com.project.person.service.RegisterAndLearnerService;
import com.project.person.utils.RemoveDuplicateElement;
import com.project.projectWs.facade.RegisterAndLearnerFacade;
import com.project.storage.service.AvatarAndPublicAndPrivateRegisterAndLearnerAwsService;

@Service
public class RegisterAndLearnerFacadeImpl implements RegisterAndLearnerFacade {

	@Autowired
	private RegisterAndLearnerService registerAndLearnerService;

	@Autowired
	private AvatarAndPublicAndPrivateRegisterAndLearnerAwsService avatarAndPublicAndPrivateRegisterAndLearnerAwsService;

	@Override
	public String createOrUpdateRegisterAndLearnerAvatar(MultipartFile file, String registerAndLearnerId) {
		String url = avatarAndPublicAndPrivateRegisterAndLearnerAwsService.uploadImageToAmazon(file,
				registerAndLearnerId);
		String registerAndLearnerIdUpdatedId = handleAvatarOfAvatarAndPublicAndPrivateRegisterAndLearnerAwsService(
				registerAndLearnerId, url);
		return registerAndLearnerIdUpdatedId != null ? "Insert Avatar successfully" : "";
	}

	private String handleAvatarOfAvatarAndPublicAndPrivateRegisterAndLearnerAwsService(String registerAndLearnerId,
			String urlParameter) {
		RegisterAndLearnerDto registerAndLearnerDto = registerAndLearnerService.findById(registerAndLearnerId);
		registerAndLearnerDto.setAvatar(urlParameter);
		String registerAndLearnerIdUpdatedId = registerAndLearnerService.updateRegisterAndLearner(registerAndLearnerDto);
		return registerAndLearnerIdUpdatedId;
	}

	@Override
	public void deleteAvatarOfRegisterAndLearner(String urlFile) {
		avatarAndPublicAndPrivateRegisterAndLearnerAwsService.deleteByFileNameAndID(urlFile);
		String id = urlFile.substring(urlFile.lastIndexOf('/') + 1);
		handleAvatarOfAvatarAndPublicAndPrivateRegisterAndLearnerAwsService(id, null);
	}

	@Override
	public String uploadImageToAmazonPrivateImgs(MultipartFile file, String fileName) {
		String url = avatarAndPublicAndPrivateRegisterAndLearnerAwsService.uploadImageToAmazonPrivateImgs(file,
				fileName);
		RegisterAndLearnerDto registerAndLearnerDto = registerAndLearnerService
				.findById(fileName.substring(fileName.lastIndexOf("/") + 1, fileName.lastIndexOf("Private")));
		List<String> urlPrivateImgs = registerAndLearnerDto.getPrivateImgs();
		urlPrivateImgs.add(url);
		List<String> converter = new LinkedList<>(urlPrivateImgs);
		converter = RemoveDuplicateElement.removeDuplicateElemet(converter);
		registerAndLearnerDto.setPrivateImgs(urlPrivateImgs);
		String tutorUpdatedId = registerAndLearnerService.updateRegisterAndLearner(registerAndLearnerDto);
		return tutorUpdatedId != null ? "Insert PrivateImgs successfully" : "";
	}

	@Override
	public String uploadImageToAmazonPubclicImgs(MultipartFile file, String fileName) {
		String url = avatarAndPublicAndPrivateRegisterAndLearnerAwsService.uploadImageToAmazonPubclicImgs(file,
				fileName);
		RegisterAndLearnerDto registerAndLearnerDto = registerAndLearnerService
				.findById(fileName.substring(fileName.lastIndexOf("/") + 1, fileName.lastIndexOf("Public")));
		List<String> urlPublicImgs = registerAndLearnerDto.getPrivateImgs();
		urlPublicImgs.add(url);
		List<String> converter = new LinkedList<>(urlPublicImgs);
		converter = RemoveDuplicateElement.removeDuplicateElemet(converter);
		registerAndLearnerDto.setPublicImgs(urlPublicImgs);
		String tutorUpdatedId = registerAndLearnerService.updateRegisterAndLearner(registerAndLearnerDto);
		return tutorUpdatedId != null ? "Insert PublicImgs successfully" : "";
	}

	@Override
	public void deleteByFileNameAndIDPrivateImgs(String urlFile) {
		avatarAndPublicAndPrivateRegisterAndLearnerAwsService.deleteByFileNameAndIDPrivateImgs(urlFile);
		RegisterAndLearnerDto registerAndLearnerDto = registerAndLearnerService
				.findById(urlFile.substring(urlFile.lastIndexOf("/") + 1, urlFile.lastIndexOf("Private")));
		List<String> urlPrivateImgs = registerAndLearnerDto.getPrivateImgs();
		urlPrivateImgs.remove(urlFile);
		registerAndLearnerDto.setPrivateImgs(urlPrivateImgs);
		registerAndLearnerService.updateRegisterAndLearner(registerAndLearnerDto);
	}

	@Override
	public void deleteByFileNameAndIDPublicImgs(String urlFile) {
		avatarAndPublicAndPrivateRegisterAndLearnerAwsService.deleteByFileNameAndIDPublicImgs(urlFile);
		RegisterAndLearnerDto registerAndLearnerDto = registerAndLearnerService
				.findById(urlFile.substring(urlFile.lastIndexOf("/") + 1, urlFile.lastIndexOf("Private")));
		List<String> urlPublicImgs = registerAndLearnerDto.getPrivateImgs();
		urlPublicImgs.remove(urlFile);
		registerAndLearnerDto.setPublicImgs(urlPublicImgs);
		registerAndLearnerService.updateRegisterAndLearner(registerAndLearnerDto);

	}

	@Override
	public String uploadOrUpdatePublicImg(MultipartFile file, String tutorCode) {
		List<String> listOject = avatarAndPublicAndPrivateRegisterAndLearnerAwsService.findAllPublicImgs();
		String awsAvatarURL = "";
		if (listOject.isEmpty()) {
			awsAvatarURL = uploadImageToAmazonPubclicImgs(file, tutorCode + "Public" + String.valueOf(1));
			return awsAvatarURL;
		} else {
			String lastURL = avatarAndPublicAndPrivateRegisterAndLearnerAwsService
					.findAllByNameContainer(tutorCode + "Public", listOject);
			if (lastURL == null) {
				awsAvatarURL = uploadImageToAmazonPubclicImgs(file, tutorCode + "Public" + String.valueOf(1));
				return awsAvatarURL;
			} else {
				int count = Integer.parseInt(lastURL.substring(lastURL.lastIndexOf("c") + 1));
				awsAvatarURL = uploadImageToAmazonPubclicImgs(file, tutorCode + "Public" + String.valueOf(count + 1));
				return awsAvatarURL;
			}
		}
	}

	@Override
	public String uploadOrUpdatePrivateImg(MultipartFile file, String tutorCode) {
		List<String> listOject = avatarAndPublicAndPrivateRegisterAndLearnerAwsService.findAllPrivateImgs();
		String awsAvatarURL = "";
		if (listOject.isEmpty()) {
			awsAvatarURL = uploadImageToAmazonPrivateImgs(file, tutorCode + "Private" + String.valueOf(1));
			return awsAvatarURL;
		} else {
			String lastURL = avatarAndPublicAndPrivateRegisterAndLearnerAwsService
					.findAllByNameContainer(tutorCode + "Private", listOject);
			if (lastURL == null) {
				awsAvatarURL = uploadImageToAmazonPrivateImgs(file, tutorCode + "Private" + String.valueOf(1));
				return awsAvatarURL;
			} else {
				int count = Integer.parseInt(lastURL.substring(lastURL.lastIndexOf("e") + 1));
				awsAvatarURL = uploadImageToAmazonPrivateImgs(file, tutorCode + "Private" + String.valueOf(count + 1));
				return awsAvatarURL;
			}
		}
	}

	@Override
	public String updatePrivateImageToAmazon(MultipartFile file, String tutorCode) {
		return avatarAndPublicAndPrivateRegisterAndLearnerAwsService.updatePrivateImageToAmazon(file, tutorCode);
	}

	@Override
	public String updatePublicImageToAmazon(MultipartFile file, String tutorCode) {
		return avatarAndPublicAndPrivateRegisterAndLearnerAwsService.updatePublicImageToAmazon(file, tutorCode);
	}

}
