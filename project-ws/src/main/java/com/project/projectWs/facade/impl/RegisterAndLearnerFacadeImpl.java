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
import com.project.person.service.RegisterAndLearnerService;
import com.project.person.utils.RemoveDuplicateElement;
import com.project.projectWs.dto.RequestSaveResigterAndLearnerDto;
import com.project.projectWs.dto.RequestUpdateResigterAndLearnerDto;
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
	public ResponseRegisterAndLearnerDto findByRegisterAndLearnerCode(String registerAndLearnerId) {
		List<RegisterAndLearnerAddressDto> registerAndLearnerAddressDtos = registerAndLearnerAddressService.findAll();
		RegisterAndLearnerDto registerAndLearnerDto = registerAndLearnerService.findByRegisterAndLearnerCode(registerAndLearnerId);
		if(registerAndLearnerDto != null) {
			ResponseRegisterAndLearnerDto dto = new ResponseRegisterAndLearnerDto();
			dto = ObjectMapperUtils.map(registerAndLearnerDto, ResponseRegisterAndLearnerDto.class);
			dto.setRegisterAndLearnerAddressDtos(registerAndLearnerAddressDtos.stream().filter(re -> re.getRegisterAndLearnerId().equals(registerAndLearnerDto.getId())).collect(Collectors.toList()));		
			return dto;
		}
		return null;
	}

	@Override
	public List<ResponseRegisterAndLearnerDto> findByPhoneNumber(String phoneNumber) {
		return convertObjectSerToObjectFaca(registerAndLearnerService.findByPhoneNumber(phoneNumber));
	}

	@Override
	public List<ResponseRegisterAndLearnerDto> findByEndPhoneNumber(String endPhoneNumber) {
		return convertObjectSerToObjectFaca(registerAndLearnerService.findByEndPhoneNumber(endPhoneNumber));
	}

	@Override
	public List<ResponseRegisterAndLearnerDto> findByFullNameContain(String fullName) {
		return convertObjectSerToObjectFaca(registerAndLearnerService.findByFullNameContain(fullName));
	}

	@Override
	public List<ResponseRegisterAndLearnerDto> findByEnglishFullNameContaining(String englishFullName) {
		return convertObjectSerToObjectFaca(registerAndLearnerService.findByEnglishFullNameContaining(englishFullName));
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
	public List<ResponseRegisterAndLearnerDto> findByVocativeAndEnglishFullNameContaining(String vocative, String englishName) {
		return convertObjectSerToObjectFaca(registerAndLearnerService.findByVocativeAndEnglishFullNameContaining(vocative, englishName));
	}

	@Override
	public List<String> findByVocativeAndEnglishFullNameAndShowFullName(String vocative, String englishName) {
		return registerAndLearnerService.findByVocativeAndEnglishFullNameAndShowFullName(vocative, englishName);
	}

	@Override
	public List<ResponseRegisterAndLearnerDto> findByVocativeAndFullName(String vocative, String fullName) {
		return convertObjectSerToObjectFaca(registerAndLearnerService.findByVocativeAndFullName(vocative, fullName));
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
		String resigterAndLearnerId = registerAndLearnerService.saveRegisterAndLearner(registerAndLearnerDto);
		List<RegisterAndLearnerAddressDto> registerAndLearnerAddressDtos = dto.getRegisterAndLearnerAddressDtos();
		if (!registerAndLearnerAddressDtos.isEmpty()) {
			registerAndLearnerAddressService.saveAll(registerAndLearnerAddressDtos, resigterAndLearnerId,
					userFacade.getCurrentUser());
			return resigterAndLearnerId;
		}
		return StringUtils.EMPTY;
	}

	@Override
	public List<ResponseRegisterAndLearnerDto> findAll() {
		return convertObjectSerToObjectFaca(registerAndLearnerService.findAllRegisterAndLearner());
	}

	private List<ResponseRegisterAndLearnerDto> convertObjectSerToObjectFaca(List<RegisterAndLearnerDto> registerAndLearnerDtos) {
		List<RegisterAndLearnerAddressDto> registerAndLearnerAddressDtos = registerAndLearnerAddressService.findAll();
		List<ResponseRegisterAndLearnerDto> responseRegisterAndLearnerDtos = new LinkedList<>();
		registerAndLearnerDtos.forEach(item -> {
			ResponseRegisterAndLearnerDto dto = new ResponseRegisterAndLearnerDto();
			dto = ObjectMapperUtils.map(item, ResponseRegisterAndLearnerDto.class);
			dto.setRegisterAndLearnerAddressDtos(registerAndLearnerAddressDtos.stream().filter(re -> re.getRegisterAndLearnerId().equals(item.getId())).collect(Collectors.toList()));		
			responseRegisterAndLearnerDtos.add(dto);
		});
		
		return responseRegisterAndLearnerDtos;
	}

	@Override
	public String update(RequestUpdateResigterAndLearnerDto dto) {
		RegisterAndLearnerDto registerAndLearnerDto = new RegisterAndLearnerDto();
		registerAndLearnerDto = ObjectMapperUtils.map(dto, RegisterAndLearnerDto.class);
		registerAndLearnerDto.setCreatedBy(userFacade.getCurrentUser());
		registerAndLearnerDto.setRegisterAndLearnerRelationships(dto.getRegisterAndLearnerRelationships());
		String resigterAndLearnerId = registerAndLearnerService.update(registerAndLearnerDto);
		List<RegisterAndLearnerAddressDto> registerAndLearnerAddressDtos = dto.getRegisterAndLearnerAddressDtos();
		if (!registerAndLearnerAddressDtos.isEmpty()) {
			registerAndLearnerAddressService.saveAll(registerAndLearnerAddressDtos, resigterAndLearnerId,
					userFacade.getCurrentUser());
			return resigterAndLearnerId;
		}
		return StringUtils.EMPTY;
	}

}
