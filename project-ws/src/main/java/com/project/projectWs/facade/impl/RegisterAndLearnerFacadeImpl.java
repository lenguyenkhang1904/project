package com.project.projectWs.facade.impl;

import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.project.common.utils.ObjectMapperUtils;
import com.project.location.dto.RegisterAndLearnerAddressDto;
import com.project.location.service.RegisterAndLearnerAddressService;
import com.project.person.dto.RegisterAndLearnerDto;
import com.project.person.dto.TutorDto;
import com.project.person.service.RegisterAndLearnerService;
import com.project.person.utils.RemoveDuplicateElement;
import com.project.projectWs.dto.RequestSaveResigterAndLearnerDto;
import com.project.projectWs.dto.ResponseRegisterAndLearnerDto;
import com.project.projectWs.facade.RegisterAndLearnerFacade;
import com.project.projectWs.facade.UserFacade;
import com.project.storage.service.AvatarAndPublicAndPrivateRegisterAndLearnerAwsService;

@Service
public class RegisterAndLearnerFacadeImpl implements RegisterAndLearnerFacade {

	@Autowired
	private RegisterAndLearnerService registerAndLearnerService;

	@Autowired
	private AvatarAndPublicAndPrivateRegisterAndLearnerAwsService avatarAndPublicAndPrivateRegisterAndLearnerAwsService;
	
	@Autowired
	private RegisterAndLearnerAddressService registerAndLearnerAddressService;
	
	@Autowired
	private UserFacade userFacade;
	

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
		String registerAndLearnerIdUpdatedId = registerAndLearnerService
				.updateRegisterAndLearner(registerAndLearnerDto);
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
		List<String> urlPublicImgs = registerAndLearnerDto.getPublicImgs();
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

	@Override
	public TutorDto findByRegisterAndLearnerCode(String registerAndLearnerId) {
		return registerAndLearnerService.findByRegisterAndLearnerCode(registerAndLearnerId);
	}

	@Override
	public List<RegisterAndLearnerDto> findByPhoneNumber(String phoneNumber) {
		return registerAndLearnerService.findByPhoneNumber(phoneNumber);
	}

	@Override
	public List<RegisterAndLearnerDto> findByEndPhoneNumber(String endPhoneNumber) {
		return registerAndLearnerService.findByEndPhoneNumber(endPhoneNumber);
	}

	@Override
	public List<RegisterAndLearnerDto> findByFullNameContain(String fullName) {
		return registerAndLearnerService.findByFullNameContain(fullName);
	}

	@Override
	public List<RegisterAndLearnerDto> findByEnglishFullNameContaining(String englishFullName) {
		return registerAndLearnerService.findByEnglishFullNameContaining(englishFullName);
	}

	@Override
	public List<String> findByEnglishNameAndShowEngLishFullName(String englishFullName) {
		return registerAndLearnerService.findByEnglishNameAndShowEngLishFullName(englishFullName);
	}

	@Override
	public List<String> findByEngfullnameAndShowFullName(String fullname) {
		return registerAndLearnerService.findByfullnameAndShowFullName(fullname);
	}

	@Override
	public List<String> findByfullnameAndShowFullName(String fullname) {
		return registerAndLearnerService.findByfullnameAndShowFullName(fullname);
	}

	@Override
	public List<RegisterAndLearnerDto> findByVocativeAndEnglishFullNameContaining(String vocative, String englishName) {
		return registerAndLearnerService.findByVocativeAndEnglishFullNameContaining(vocative, englishName);
	}

	@Override
	public List<String> findByVocativeAndEnglishFullNameAndShowFullName(String vocative, String englishName) {
		return registerAndLearnerService.findByVocativeAndEnglishFullNameAndShowFullName(vocative, englishName);
	}

	@Override
	public List<RegisterAndLearnerDto> findByVocativeAndFullName(String vocative, String fullName) {
		return registerAndLearnerService.findByVocativeAndFullName(vocative, fullName);
	}

	@Override
	public List<String> findByVocativeAndFullNameAndShowFullName(String vocative, String fullName) {
		return registerAndLearnerService.findByVocativeAndFullNameAndShowFullName(vocative, fullName);
	}

	@Override
	public String save(RequestSaveResigterAndLearnerDto dto) {
		RegisterAndLearnerDto registerAndLearnerDto = new RegisterAndLearnerDto();
		registerAndLearnerDto = ObjectMapperUtils.map(dto, RegisterAndLearnerDto.class);
		registerAndLearnerDto.setCreatedBy(userFacade.getCurrentUser());
		registerAndLearnerDto.setRegisterAndLearnerRelationships(dto.getRegisterAndLearnerRelationships());
		String idResigterAndLearner = registerAndLearnerService.saveRegisterAndLearner(registerAndLearnerDto);	
		List<RegisterAndLearnerAddressDto> registerAndLearnerAddressDtos = dto.getRegisterAndLearnerAddressDtos();
		if(!registerAndLearnerAddressDtos.isEmpty()) {
			registerAndLearnerAddressService.saveAll(registerAndLearnerAddressDtos, idResigterAndLearner, userFacade.getCurrentUser());
			return idResigterAndLearner;
		}
		return StringUtils.EMPTY;
	}

	@Override
	public List<ResponseRegisterAndLearnerDto> findAll() {
		List<RegisterAndLearnerAddressDto> registerAndLearnerAddressDtos = registerAndLearnerAddressService.findAll();
		
		List<RegisterAndLearnerDto> registerAndLearnerDtos = registerAndLearnerService.findAllRegisterAndLearner();
		
		List<ResponseRegisterAndLearnerDto> responseRegisterAndLearnerDtos = new LinkedList<>();
		registerAndLearnerDtos.forEach(item -> {
			ResponseRegisterAndLearnerDto dto = new ResponseRegisterAndLearnerDto();
			dto = ObjectMapperUtils.map(item, ResponseRegisterAndLearnerDto.class);
			dto.setRegisterAndLearnerAddressDtos(registerAndLearnerAddressDtos.stream().filter(re -> re.getRegisterAndLearnerId().equals(item.getId())).collect(Collectors.toList()));		
			responseRegisterAndLearnerDtos.add(dto);
		});
		
		return responseRegisterAndLearnerDtos;
	}

}
