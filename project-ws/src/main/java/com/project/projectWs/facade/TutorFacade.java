package com.project.projectWs.facade;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.project.person.dto.TutorDto;
import com.project.projectWs.dto.RequestSaveTutor;
import com.project.projectWs.dto.RequestUpdateTutor;
import com.project.projectWs.dto.ResponseTutor;
import com.project.projectWs.dto.TutorForWebByIdDto;
import com.project.projectWs.dto.TutorForWebDto;

public interface TutorFacade {
	Long saveTutor(final RequestSaveTutor request);

	List<ResponseTutor> findAllTutor();

	ResponseTutor findByTutorCode(final Long tutorCode);

	List<ResponseTutor> findByPhoneNumber(final String phoneNumber);

	List<ResponseTutor> findByEndPhoneNumber(String endPhoneNumber);

	List<ResponseTutor> findByFullNameContain(final String fullName);

	List<ResponseTutor> findByEnglishFullName(final String fullname);

	List<String> findByEngfullnameAndShowFullName(final String fullname);

	List<String> findByfullnameAndShowFullName(final String fullname);

	String createOrUpdateTutorAvatar(final MultipartFile file, final String tutorCode);

	void deleteAvatarOfTutor(final String urlFile);

	String uploadImageToAmazonPrivateImgs(final MultipartFile file, final String fileName);

	String uploadImageToAmazonPubclicImgs(final MultipartFile file, final String fileName);

	void deleteByFileNameAndIDPrivateImgs(String urlFile);

	void deleteByFileNameAndIDPublicImgs(String urlFile);

	String uploadOrUpdatePublicImg(final MultipartFile file, final String tutorCode);

	String uploadOrUpdatePrivateImg(final MultipartFile file, final String tutorCode);

	String updatePrivateImageToAmazon(final MultipartFile file, final String tutorCode);

	String updatePublicImageToAmazon(final MultipartFile file, final String tutorCode);

	TutorDto findById(final Long id);
	
	Long updateTutor(final RequestUpdateTutor request);

	List<TutorForWebDto> findAllTutorForWeb();

	TutorForWebByIdDto findAllTutorForWebById(Long id);
	
}
