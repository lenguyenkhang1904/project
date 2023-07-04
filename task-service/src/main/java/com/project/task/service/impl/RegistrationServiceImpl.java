package com.project.task.service.impl;

import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.project.common.utils.DateConverter;
import com.project.common.utils.ObjectMapperUtils;
import com.project.task.dto.RegistrationDto;
import com.project.task.dto.TaskDto;
import com.project.task.entity.Registration;
import com.project.task.entity.Task;
import com.project.task.repository.RegistrationRepository;
import com.project.task.repository.TaskRepository;
import com.project.task.service.RegistrationService;

@Service
public class RegistrationServiceImpl implements RegistrationService {

	@Autowired
	private RegistrationRepository registrationRepository;

	@Autowired
	private TaskRepository taskRepository;

	@Override
	public String createRegistration(RegistrationDto dto) {
		Registration registration = new Registration();
		registration = ObjectMapperUtils.map(dto, Registration.class);
		registration.setCreatedAt(DateConverter.convertDateToLocalDateTime(new Date()));
		registration.setCreatedBy(dto.getCreatedBy());

		Optional<Task> taskOpt = taskRepository.findById(dto.getTaskId());
		if (!taskOpt.isEmpty()) {
			Task task = taskOpt.get();
			registration.setTask(task);
		}
		return registrationRepository.save(registration).getId();
	}

	@Override
	public String updateRegistration(RegistrationDto dto) {
		Optional<Registration> registrationOpt = registrationRepository.findById(dto.getId());
		if (!registrationOpt.isEmpty()) {
			Registration registration = registrationOpt.get();
			registration = ObjectMapperUtils.map(dto, Registration.class);
			registration.setUpdatedAt(DateConverter.convertDateToLocalDateTime(new Date()));
			registration.setUpdatedBy(dto.getCreatedBy());

			Optional<Task> taskOpt = taskRepository.findById(dto.getTaskId());
			if (!taskOpt.isEmpty()) {
				Task task = taskOpt.get();
				registration.setTask(task);
			}
			return registrationRepository.save(registration).getId();
		}
		return StringUtils.EMPTY;
	}

	@Override
	public List<RegistrationDto> findAllRegistration() {
		List<RegistrationDto> reDtos = new LinkedList<>();
		List<Registration> entities = registrationRepository.findAllRegistration();
		if (!CollectionUtils.isEmpty(entities)) {
			reDtos = entities.stream().map(item -> {
				RegistrationDto dto = new RegistrationDto();
				dto = convertEntityToDto(item, dto);
				return dto;
			}).collect(Collectors.toList());
		}
		return reDtos;
	}

	private RegistrationDto convertEntityToDto(Registration item, RegistrationDto dto) {
		dto = ObjectMapperUtils.map(item, RegistrationDto.class);
		return dto;
	}

	@Override
	public RegistrationDto findById(String registrationId) {
		Optional<Registration> registrationOpt = registrationRepository.findById(registrationId);
		if(!registrationOpt.isEmpty()) {
			RegistrationDto dto = new RegistrationDto();
			Registration registration = registrationOpt.get();
			dto = convertEntityToDto(registration, dto);
			return dto;
		}
		return null;
	}

}
