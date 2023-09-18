package com.project.projectWs.facade;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.project.projectWs.dto.ResponseJobDto;
import com.project.projectWs.dto.RequestSaveJob;
import com.project.projectWs.dto.RequestUpdateJobDto;
import com.project.projectWs.dto.RequestUpdateJobResultDto;

public interface JobFacade {
	
	String createJob(RequestSaveJob request);
	
	String updateJob(RequestUpdateJobDto request);
	
	List<ResponseJobDto> findAll();
	
	ResponseJobDto findById(String id);

	String uploadImageToAmazonImgs(MultipartFile file, String string);

	String uploadImageToAmazon(MultipartFile file, String string);

	void deleteByFileNameAndID(String string);
	
	String updateJobResult(RequestUpdateJobResultDto request);
	
	boolean findAllJobRetainedImgsIdentificationSynchronized();

}
