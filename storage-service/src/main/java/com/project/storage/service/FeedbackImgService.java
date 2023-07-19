package com.project.storage.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface FeedbackImgService {
	
	String uploadMultipartFile(MultipartFile multipartFile, String nameFile, String bucketName, String url);
	
	String uploadImageToAmazonPubclicImgs(MultipartFile multipartFile, String filename);
	
	List<String> findAllPrivateFeedBackImgs();
	
	List<String> findAllPublicFeedBackImgs();
	
	String updatePrivateImageToAmazon(MultipartFile multipartFile, String filename);
	
	String updatePublicImageToAmazon(MultipartFile multipartFile, String filename);
	
	boolean checkExistObjectPrivateInS3(String name);
	
	boolean checkExistObjectPublicInS3(String name);
	
	String findAllByNameContainer(String name, List<String> containURLs);
	
	void deleteByFileNameAndIDPrivateImgs(String urlFile);
	
	void deleteByFileNameAndIDPublicImgs(String urlFile);
	

}
