package com.project.projectWs.facade;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.project.person.dto.RegisterAndLearnerDto;
import com.project.projectWs.dto.RequestSaveResigterAndLearnerDto;
import com.project.projectWs.dto.ResponseRegisterAndLearnerDto;

public interface RegisterAndLearnerFacade {

	String createOrUpdateRegisterAndLearnerAvatar(final MultipartFile file, final String registerAndLearnerId);

	void deleteAvatarOfRegisterAndLearner(final String urlFile);

	String uploadImageToAmazonPrivateImgs(final MultipartFile file, final String fileName);

	String uploadImageToAmazonPubclicImgs(final MultipartFile file, final String fileName);

	void deleteByFileNameAndIDPrivateImgs(String urlFile);

	void deleteByFileNameAndIDPublicImgs(String urlFile);

	String uploadOrUpdatePublicImg(final MultipartFile file, final String tutorCode);

	String uploadOrUpdatePrivateImg(final MultipartFile file, final String tutorCode);

	String updatePrivateImageToAmazon(final MultipartFile file, final String tutorCode);

	String updatePublicImageToAmazon(final MultipartFile file, final String tutorCode);
	
	ResponseRegisterAndLearnerDto findByRegisterAndLearnerCode(final String registerAndLearnerId);

	List<ResponseRegisterAndLearnerDto> findByPhoneNumber(final String phoneNumber);

	List<ResponseRegisterAndLearnerDto> findByEndPhoneNumber(String endPhoneNumber);

	List<ResponseRegisterAndLearnerDto> findByFullNameContain(final String fullName);
	
	List<ResponseRegisterAndLearnerDto> findByEnglishFullNameContaining(String englishFullName);

	List<String> findByEnglishNameAndShowEngLishFullName(String englishFullName);
   
	List<String> findByEngfullnameAndShowFullName(final String fullname);
 
    List<String> findByfullnameAndShowFullName(final String fullname);

	List<String> findByVocativeAndFullNameAndShowFullName(String vocative, String fullName);
    
    List<ResponseRegisterAndLearnerDto> findByVocativeAndEnglishFullNameContaining(String vocative, String englishName);

	List<String> findByVocativeAndEnglishFullNameAndShowFullName(String vocative, String englishName);

	List<ResponseRegisterAndLearnerDto> findByVocativeAndFullName(String vocative, String fullName);
	
	String save(RequestSaveResigterAndLearnerDto dto);
	
	List<ResponseRegisterAndLearnerDto> findAll();

}
