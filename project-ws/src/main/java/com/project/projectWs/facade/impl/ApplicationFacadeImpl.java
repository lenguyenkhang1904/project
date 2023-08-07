package com.project.projectWs.facade.impl;

import java.util.LinkedList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.project.common.utils.ObjectMapperUtils;
import com.project.person.dto.TutorForFindAllDto;
import com.project.person.service.TutorService;
import com.project.projectWs.dto.RequestSaveApplicationDto;
import com.project.projectWs.dto.RequestUpdateApplicationDto;
import com.project.projectWs.dto.ResponseApplicationDto;
import com.project.projectWs.dto.ResponseTutorBasicInfo;
import com.project.projectWs.facade.ApplicationFacade;
import com.project.projectWs.facade.UserFacade;
import com.project.task.dto.ApplicationDto;
import com.project.task.service.ApplicationService;
import com.project.task.service.TaskService;

import software.amazon.ion.NullValueException;

@Service
public class ApplicationFacadeImpl implements ApplicationFacade {

	@Autowired
	private TutorService tutorService;

	@Autowired
	private ApplicationService applicationService;

	@Autowired
	private TaskService taskService;

	@Autowired
	private UserFacade userFacade;

	@Override
	public String createApplication(RequestSaveApplicationDto dto) {

		boolean checkExistTasks = applicationService.checkExistTaskInApplication(dto.getTutorId(), dto.getTaskId());
		if (!checkExistTasks) {
			saveAllSubjectGroup(dto.getTaskId(), dto.getTutorId());
			ApplicationDto applicationDto = new ApplicationDto();
			applicationDto.setApplicationSigns(dto.getApplicationSigns());
			applicationDto.setTaskId(dto.getTaskId());
			applicationDto.setTutorId(dto.getTutorId());
			applicationDto.setCreatedBy(userFacade.getCurrentUser());
			return applicationService.createApplication(applicationDto);
		}
		throw new NullValueException("We can not create because Tutor had existed application for this task ");
	}

	@Transactional
	@Override
	public String updateApplication(RequestUpdateApplicationDto dto) {

		tutorService.deleteSubjectGroupMaybeByTutorId(dto.getTutorId());
		saveAllSubjectGroup(dto.getTaskId(), dto.getTutorId());
		ApplicationDto applicationDto = new ApplicationDto();
		applicationDto.setId(dto.getId());
		applicationDto.setApplicationSigns(dto.getApplicationSigns());
		applicationDto.setTaskId(dto.getTaskId());
		applicationDto.setTutorId(dto.getTutorId());
		applicationDto.setCreatedBy(userFacade.getCurrentUser());

		return applicationService.updateApplication(applicationDto);
	}

	private void saveAllSubjectGroup(String taskId, Long tutorId) {
		List<String> subjectGroupOfTask = taskService.getSubjectGroupsByTaskId(taskId);
		List<String> subjectGroupOfTutor = tutorService.getSubjectGroupsByTutorId(tutorId);

		if (!subjectGroupOfTutor.isEmpty() && !subjectGroupOfTask.isEmpty()) {
			subjectGroupOfTask.stream()
					.filter(subjectGtask -> subjectGroupOfTutor.stream()
							.anyMatch(subjectGTutor -> !subjectGTutor.equals(subjectGtask)))
					.forEach(taskSubjectG -> subjectGroupOfTutor.add(taskSubjectG));
			tutorService.saveAllSubjectGroup(subjectGroupOfTutor, tutorId);
		} else if (subjectGroupOfTutor.isEmpty() && !subjectGroupOfTask.isEmpty()) {
			subjectGroupOfTutor.addAll(subjectGroupOfTask);
			tutorService.saveAllSubjectGroup(subjectGroupOfTutor, tutorId);
		}
	}

	@Override
	public List<ResponseApplicationDto> findAllApplication() {
		List<ApplicationDto> applications = applicationService.findAllApplication();

		List<ResponseApplicationDto> response = new LinkedList<>();

		List<TutorForFindAllDto> tutorDtos = tutorService.findAllTutor();

		if (!CollectionUtils.isEmpty(applications)) {
			response = applications.stream().map(item -> {
				ResponseApplicationDto dto = new ResponseApplicationDto();
				dto = convertObjectToResponse(dto, item, tutorDtos);
				return dto;
			}).collect(Collectors.toList());
		}

		return response;
	}

	private ResponseApplicationDto convertObjectToResponse(ResponseApplicationDto response, ApplicationDto item,
			List<TutorForFindAllDto> tutorDtos) {
		response = ObjectMapperUtils.map(item, ResponseApplicationDto.class);

		Optional<TutorForFindAllDto> tutorOpt = tutorDtos.stream().filter(re -> re.getId().equals(item.getTutorId()))
				.findFirst();

		if (!tutorOpt.isEmpty()) {
			TutorForFindAllDto tutor = tutorOpt.get();
			ResponseTutorBasicInfo tutorWithBasisInfo = ObjectMapperUtils.map(tutor, ResponseTutorBasicInfo.class);
			response.setTutor(tutorWithBasisInfo);
		}

		return response;
	}

	@Override
	public ResponseApplicationDto findById(String id) {
		ApplicationDto applicationDto = applicationService.findByid(id);
		if (applicationDto != null) {
			List<TutorForFindAllDto> tutorDtos = tutorService.findAllTutor();
			ResponseApplicationDto response = new ResponseApplicationDto();
			response = convertObjectToResponse(response, applicationDto, tutorDtos);
			return response;
		}
		return null;
	}

}
