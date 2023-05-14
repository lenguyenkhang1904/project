package com.project.storage.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface AvatarAwsService {

	String uploadMultipartFile(MultipartFile multipartFile, String nameFile);

	List<String> findAll();

	void deleteByFileNameAndID(String urlFile);

	boolean checkExistObjectinS3(String name);
}
