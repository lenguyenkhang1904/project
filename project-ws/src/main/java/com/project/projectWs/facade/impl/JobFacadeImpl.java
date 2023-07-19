package com.project.projectWs.facade.impl;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.ObjectMapperUtils;
import com.project.job.dto.JobDto;
import com.project.job.dto.TaskByTheTimeCreatingDto;
import com.project.job.dto.TutorByTheTimeCreatingJobDto;
import com.project.job.service.JobService;
import com.project.person.dto.TutorDto;
import com.project.person.service.TutorService;
import com.project.projectWs.dto.RequestSaveJob;
import com.project.projectWs.dto.RequestUpdateJobDto;
import com.project.projectWs.facade.JobFacade;
import com.project.projectWs.facade.UserFacade;
import com.project.task.dto.TaskDto;
import com.project.task.service.TaskService;

@Service
public class JobFacadeImpl implements JobFacade {

	@Autowired
	private TutorService tutorService;

	@Autowired
	private TaskService taskService;

	@Autowired
	private JobService jobService;
	
	@Autowired
	private UserFacade userFacade;

	@Override
	public String createJob(RequestSaveJob request) {
		String applicationId = request.getApplicationId();
		if (!StringUtils.isEmpty(applicationId)) {
			JobDto jobDto = new JobDto();
			jobDto = mapRequestToDto(request, applicationId, jobDto, null);
			jobDto.setCreatedBy(userFacade.getCurrentUser());
			jobDto.setId(applicationId.concat("-job"));
			String idJob = jobService.createJob(jobDto);

			return idJob;
		}

		return StringUtils.EMPTY;
	}

	@Override
	public String updateJob(RequestUpdateJobDto request) {
		String applicationId = request.getApplicationId();
		if (!StringUtils.isEmpty(applicationId)) {
			JobDto jobDto = new JobDto();
			jobDto = mapRequestToDto(null, applicationId, jobDto, request);
			jobDto.setCreatedBy(userFacade.getCurrentUser());
			String idJob = jobService.updateJob(jobDto);

			return idJob;
		}

		return StringUtils.EMPTY;
	}
	
	private JobDto mapRequestToDto(RequestSaveJob request,  String applicationId, JobDto jobDto, RequestUpdateJobDto requestUpdate) {
		jobDto = ObjectMapperUtils.map(request == null ? requestUpdate : request, JobDto.class);
		Long tutorId = Long.parseLong(
				applicationId.substring(request.getApplicationId().indexOf("-") + 1, applicationId.lastIndexOf("-")));
		TutorDto tutorDto = tutorService.findById(tutorId);
		if (tutorId != null && tutorDto != null) {
			TutorByTheTimeCreatingJobDto dto = new TutorByTheTimeCreatingJobDto();
			dto = ObjectMapperUtils.map(tutorDto, TutorByTheTimeCreatingJobDto.class);
			dto.setTutorId(tutorDto.getId());
			jobDto.setTutorId(tutorId);
			jobDto.setTutorByTheTimeCreatingJobDto(dto);
		}

		String taskId = applicationId.substring(0, applicationId.indexOf("-"));
		TaskDto taskDto = taskService.findByTaskId(taskId);

		if (!StringUtils.isEmpty(taskId) && taskDto != null) {
			TaskByTheTimeCreatingDto dto = new TaskByTheTimeCreatingDto();
			dto = ObjectMapperUtils.map(taskDto, TaskByTheTimeCreatingDto.class);
			dto.setTaskId(taskId);
			jobDto.setTaskId(taskId);
			jobDto.setTaskByTheTimeCreatingDto(dto);
		}
		return jobDto;
	}

}
