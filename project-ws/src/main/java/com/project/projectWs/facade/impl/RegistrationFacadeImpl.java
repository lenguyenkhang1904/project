package com.project.projectWs.facade.impl;

import java.util.LinkedList;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.ObjectMapperUtils;
import com.project.person.dto.RegisterAndLearnerDto;
import com.project.person.service.RegisterAndLearnerService;
import com.project.projectWs.dto.RequestSaveRegistrationDto;
import com.project.projectWs.dto.RequestUpdateRegistrationDto;
import com.project.projectWs.dto.ResponseRegisterAndLearnerBasicInfo;
import com.project.projectWs.dto.ResponseRegistrationDto;
import com.project.projectWs.facade.RegistrationFacade;
import com.project.projectWs.facade.UserFacade;
import com.project.task.dto.RegistrationDto;
import com.project.task.service.RegistrationService;

import software.amazon.ion.NullValueException;

@Service
public class RegistrationFacadeImpl implements RegistrationFacade {

	@Autowired
	private RegistrationService registrationService;

	@Autowired
	private UserFacade userFacade;

	@Autowired
	private RegisterAndLearnerService registerAndLearnerService;

	@Override
	public String createRegistration(RequestSaveRegistrationDto dto) {
		
		boolean check = registrationService.checkExistRegistration(dto.getTaskId(), dto.getRegisterAndLearnerId());
		
		if(!check) {
			RegistrationDto registrationDto = new RegistrationDto();
			registrationDto = ObjectMapperUtils.map(dto, RegistrationDto.class);
			registrationDto.setCreatedBy(userFacade.getCurrentUser());
			return registrationService.createRegistration(registrationDto);
		}
		
		throw new NullValueException("We can not create because registerAndleanrner had existed application for this task ");
	}

	@Override
	public String updateRegistration(RequestUpdateRegistrationDto dto) {
		RegistrationDto registrationDto = new RegistrationDto();
		registrationDto = ObjectMapperUtils.map(dto, RegistrationDto.class);
		registrationDto.setCreatedBy(userFacade.getCurrentUser());
		return registrationService.updateRegistration(registrationDto);
	}

	@Override
	public List<ResponseRegistrationDto> findAllRegistration(String taskId) {

		List<ResponseRegistrationDto> response = new LinkedList<>();

		List<RegisterAndLearnerDto> registerAndLearnerDtos = registerAndLearnerService.findAllRegisterAndLearner();

		List<RegistrationDto> registrationDtos = registrationService.findAllRegistration(taskId);

		response = registrationDtos.stream().map(item -> {

			ResponseRegistrationDto dto = new ResponseRegistrationDto();

			dto = convertToResponse(registerAndLearnerDtos, item);

			return dto;
		}).collect(Collectors.toList());

		return response;
	}

	private ResponseRegistrationDto convertToResponse(List<RegisterAndLearnerDto> registerAndLearnerDtos,
			RegistrationDto item) {
		ResponseRegistrationDto dto;
		dto = ObjectMapperUtils.map(item, ResponseRegistrationDto.class);

		Optional<RegisterAndLearnerDto> regisAndLearnerOpt = registerAndLearnerDtos.stream()
				.filter(re -> re.getId().equals(item.getRegisterAndLearnerId())).findFirst();

		if (!regisAndLearnerOpt.isEmpty()) {
			RegisterAndLearnerDto regisAndLearner = regisAndLearnerOpt.get();
			ResponseRegisterAndLearnerBasicInfo reWithBasisInfo = ObjectMapperUtils.map(regisAndLearner,
					ResponseRegisterAndLearnerBasicInfo.class);
			dto.setRegisterAndLearner(reWithBasisInfo);
		}
		return dto;
	}

	@Override
	public ResponseRegistrationDto findById(String id) {
		RegistrationDto registrationDto = registrationService.findById(id);
		if (registrationDto != null) {
			List<RegisterAndLearnerDto> registerAndLearnerDtos = registerAndLearnerService.findAllRegisterAndLearner();
			ResponseRegistrationDto response = new ResponseRegistrationDto();
			response = convertToResponse(registerAndLearnerDtos, registrationDto);
			return response;
		}
		return null;
	}

}
