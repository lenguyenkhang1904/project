package com.project.storage.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface AvatarAndPublicAndPrivateImgsTutorAwsService {
	
	String uploadImageToAmazon(MultipartFile multipartFile, String filename);
	
	String uploadMultipartFile(MultipartFile multipartFile, String nameFile, String bucketName, String url);

	List<String> findAll();

	List<String> findAllPrivateImgs();

	List<String> findAllPublicImgs();

	void deleteByFileNameAndID(String urlFile);

	String uploadImageToAmazonPrivateImgs(MultipartFile multipartFile, String filename);

	String uploadImageToAmazonPubclicImgs(MultipartFile multipartFile, String filename);

	boolean checkExistObjectinS3(String name);

	boolean checkExistObjectPrivateInS3(String name);

	boolean checkExistObjectPublicInS3(String name);

	String findAllByNameContainer(String name, List<String> containURLs);

	void deleteByFileNameAndIDPrivateImgs(String urlFile);

	void deleteByFileNameAndIDPublicImgs(String urlFile);

	String updatePrivateImageToAmazon(MultipartFile multipartFile, String filename);

	String updatePublicImageToAmazon(MultipartFile multipartFile, String filename);
}
