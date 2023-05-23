package com.project.projectWs.facade;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.project.person.dto.TutorDto;
import com.project.projectWs.dto.RequestSaveTutor;
import com.project.projectWs.dto.RequestUpdateTutorCalendarDto;
import com.project.projectWs.dto.RequestUpdateTutorNowLevelAndUpdateAtDto;
import com.project.projectWs.dto.RequestUpdateTutorSubjectGroupForSureDto;
import com.project.projectWs.dto.RequestUpdateTutorSubjectGroupMaybeDto;
import com.project.projectWs.dto.ResponseTutor;

public interface TutorFacade {
	Long saveTutor(final RequestSaveTutor request);

	List<ResponseTutor> findAllTutor();

	TutorDto findByTutorCode(final Long tutorCode);

	List<TutorDto> findByPhoneNumber(final String phoneNumber);

	List<TutorDto> findByEndPhoneNumber(final String endPhoneNumber);

	List<TutorDto> findByFullNameContain(final String fullName);

	List<TutorDto> findByEnglishFullName(final String fullname);

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

	Long updateTutor(final TutorDto dto);

	Long updateSubjetGroupMaybe(RequestUpdateTutorSubjectGroupMaybeDto dto);

	Long updateSubjectGroupForSure(RequestUpdateTutorSubjectGroupForSureDto dto);

	Long updateNowLevelAndNowUpdateAt(RequestUpdateTutorNowLevelAndUpdateAtDto dto);

	Long updateCalendar(RequestUpdateTutorCalendarDto dto);

}
