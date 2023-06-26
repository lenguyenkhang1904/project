package com.project.task.service;

import com.project.task.dto.RegistrationDto;

public interface RegistrationService {
	
	String createRegistration(RegistrationDto dto);
	
	String updateRegistration(RegistrationDto dto);
}
