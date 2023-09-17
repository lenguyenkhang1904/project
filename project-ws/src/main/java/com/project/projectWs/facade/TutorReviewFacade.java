package com.project.projectWs.facade;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.project.projectWs.dto.RequestSaveTutorReviewDto;
import com.project.projectWs.dto.RequestUpdateTutorReviewDto;
import com.project.projectWs.dto.ResponseTutorReviewDto;

public interface TutorReviewFacade {
	
	
	String createTutorReview(RequestSaveTutorReviewDto request);
	
	List<ResponseTutorReviewDto> findAll(Long tutorId);
	
	ResponseTutorReviewDto findById(String id);
	
	String uploadImageToAmazonPrivateImgs(final MultipartFile file, final String fileName);

	String uploadImageToAmazonPubclicImgs(final MultipartFile file, final String fileName);

	void deleteByFileNameAndIDPrivateImgs(String urlFile);

	void deleteByFileNameAndIDPublicImgs(String urlFile);

	String uploadOrUpdatePublicImg(final MultipartFile file, final String tutorCode);

	String uploadOrUpdatePrivateImg(final MultipartFile file, final String tutorCode);
	
	String updateTutorReview(RequestUpdateTutorReviewDto request);

	String updatePrivateImageToAmazon(MultipartFile file, String nameFile);

	String updatePublicImageToAmazon(MultipartFile file, String nameFile);

	boolean syncUp();
	
}
