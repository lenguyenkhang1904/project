package com.project.projectWs.facade;

import com.project.projectWs.dto.RequestSaveRegistrationDto;
import com.project.projectWs.dto.RequestUpdateRegistrationDto;

public interface RegistrationFacade {
	
	String createRegistration(RequestSaveRegistrationDto dto);
	
	String updateRegistration(RequestUpdateRegistrationDto dto);
}
