package com.project.task.service;

import java.util.List;

import com.project.task.dto.ApplicationDto;

public interface ApplicationService {
	
	String createApplication(ApplicationDto dto);
	
	String updateApplication(ApplicationDto dto);
	
	boolean checkExistTaskInApplication(Long tutorId, String taskId);
	
	List<ApplicationDto> findAllApplication(String id);
	
	ApplicationDto findByid(String applicationId);

}
