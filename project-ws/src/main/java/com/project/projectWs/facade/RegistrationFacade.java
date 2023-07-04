package com.project.projectWs.facade;

import java.util.List;

import com.project.projectWs.dto.ResponseRegistrationDto;
import com.project.projectWs.dto.RequestSaveRegistrationDto;
import com.project.projectWs.dto.RequestUpdateRegistrationDto;

public interface RegistrationFacade {
	
	String createRegistration(RequestSaveRegistrationDto dto);
	
	String updateRegistration(RequestUpdateRegistrationDto dto);
	
	List<ResponseRegistrationDto> findAllRegistration();
	
	ResponseRegistrationDto findById(String id);
}
