package com.project.task.service;

import com.project.task.dto.ApplicationDto;

public interface ApplicationService {
	
	String createApplication(ApplicationDto dto);
	
	String updateApllication(ApplicationDto dto);
	
	boolean checkExistTaskInApplication(Long tutorId, String taskId);

}
