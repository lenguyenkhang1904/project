package com.project.storage.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface BillImageAwsService {
	
	String uploadImageToAmazon(MultipartFile multipartFile, String filename);
	
	String uploadMultipartFile(MultipartFile multipartFile, String nameFile, String bucketName, String url);
	
	public List<String> findAll();
	
	public void deleteByFileNameAndID(String urlFile);
	
	boolean checkExistObjectinS3(String name);
}
