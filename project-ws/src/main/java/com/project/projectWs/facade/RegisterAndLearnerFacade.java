package com.project.projectWs.facade;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.project.person.dto.RegisterAndLearnerDto;
import com.project.person.dto.TutorDto;
import com.project.projectWs.dto.RequestSaveResigterAndLearnerDto;

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
	
	TutorDto findByRegisterAndLearnerCode(final String registerAndLearnerId);

	List<RegisterAndLearnerDto> findByPhoneNumber(final String phoneNumber);

	List<RegisterAndLearnerDto> findByEndPhoneNumber(String endPhoneNumber);

	List<RegisterAndLearnerDto> findByFullNameContain(final String fullName);
	
	List<RegisterAndLearnerDto> findByEnglishFullNameContaining(String englishFullName);

	List<String> findByEnglishNameAndShowEngLishFullName(String englishFullName);
   
	List<String> findByEngfullnameAndShowFullName(final String fullname);
 
    List<String> findByfullnameAndShowFullName(final String fullname);

	List<String> findByVocativeAndFullNameAndShowFullName(String vocative, String fullName);
    
    List<RegisterAndLearnerDto> findByVocativeAndEnglishFullNameContaining(String vocative, String englishName);

	List<String> findByVocativeAndEnglishFullNameAndShowFullName(String vocative, String englishName);

	List<RegisterAndLearnerDto> findByVocativeAndFullName(String vocative, String fullName);
	
	String save(RequestSaveResigterAndLearnerDto dto);

}
