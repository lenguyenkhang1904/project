package com.project.projectWs.facade.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.ObjectMapperUtils;
import com.project.projectWs.dto.RequestSaveRegistrationDto;
import com.project.projectWs.dto.RequestUpdateRegistrationDto;
import com.project.projectWs.facade.RegistrationFacade;
import com.project.projectWs.facade.UserFacade;
import com.project.task.dto.RegistrationDto;
import com.project.task.service.RegistrationService;

@Service
public class RegistrationFacadeImpl implements RegistrationFacade {
	
	@Autowired
	private RegistrationService registrationService;

	@Autowired
	private UserFacade userFacade;
	
	@Override
	public String createRegistration(RequestSaveRegistrationDto dto) {
		RegistrationDto registrationDto = new RegistrationDto();
		registrationDto = ObjectMapperUtils.map(dto, RegistrationDto.class);
		registrationDto.setCreatedBy(userFacade.getCurrentUser());
		return registrationService.createRegistration(registrationDto);
	}

	@Override
	public String updateRegistration(RequestUpdateRegistrationDto dto) {
		RegistrationDto registrationDto = new RegistrationDto();
		registrationDto = ObjectMapperUtils.map(dto, RegistrationDto.class);
		registrationDto.setCreatedBy(userFacade.getCurrentUser());
		return registrationService.updateRegistration(registrationDto);
	}

}
