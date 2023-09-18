package com.project.task.service;

import java.util.List;

import com.project.task.dto.RegistrationDto;

public interface RegistrationService {
	
	String createRegistration(RegistrationDto dto);
	
	String updateRegistration(RegistrationDto dto);
	
	List<RegistrationDto> findAllRegistration(String taskId);
	
	RegistrationDto findById(String registrationId);
	
	boolean checkExistRegistration(String taskId, String registerAndLearnerId);
}
