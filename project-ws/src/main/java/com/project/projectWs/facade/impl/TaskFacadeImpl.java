package com.project.projectWs.facade.impl;

import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.project.common.utils.ObjectMapperUtils;
import com.project.education.dto.SubjectGroupDto;
import com.project.education.service.SubjectGroupService;
import com.project.location.dto.TaskPlaceAddressDto;
import com.project.location.service.TaskPlaceAddressService;
import com.project.projectWs.dto.RequestSaveTaskDto;
import com.project.projectWs.dto.RequestUpdateTaskDto;
import com.project.projectWs.dto.ResponseTaskDto;
import com.project.projectWs.facade.TaskFacade;
import com.project.projectWs.facade.UserFacade;
import com.project.task.dto.TaskDto;
import com.project.task.service.TaskService;

@Service
public class TaskFacadeImpl implements TaskFacade {

	@Autowired
	private TaskService taskService;

	@Autowired
	private TaskPlaceAddressService taskPlaceAdressService;

	@Autowired
	private SubjectGroupService subjectGroupService;

	@Autowired
	private UserFacade userFacade;

	@Override
	public String save(RequestSaveTaskDto dto) {
		TaskDto taskDto = new TaskDto();
		taskDto = ObjectMapperUtils.map(dto, TaskDto.class);
		taskDto.setCreatedBy(userFacade.getCurrentUser());
		String taskId = taskService.createTask(taskDto);
		List<TaskPlaceAddressDto> taskPlaceAddressDtos = dto.getTaskPlaceAddressDtos();
		if (!CollectionUtils.isEmpty(taskPlaceAddressDtos)) {
			taskPlaceAdressService.saveAll(taskPlaceAddressDtos, taskId, userFacade.getCurrentUser());
			return taskId;
		}
		return StringUtils.EMPTY;
	}

	@Override
	public String update(RequestUpdateTaskDto dto) {
		TaskDto taskDto = new TaskDto();
		taskDto = ObjectMapperUtils.map(dto, TaskDto.class);
		taskDto.setCreatedBy(userFacade.getCurrentUser());
		String taskId = taskService.updateTask(taskDto);
		List<TaskPlaceAddressDto> taskPlaceAddressDtos = dto.getTaskPlaceAddressDtos();
		if (!CollectionUtils.isEmpty(taskPlaceAddressDtos)) {
			taskPlaceAdressService.saveAll(taskPlaceAddressDtos, taskId, userFacade.getCurrentUser());
			return taskId;
		}
		return StringUtils.EMPTY;
	}

	@Override
	public List<ResponseTaskDto> findAllTask() {
		Set<TaskPlaceAddressDto> taskPlaceAddressDtos = taskPlaceAdressService.findAll().stream()
				.collect(Collectors.toSet());
		Set<SubjectGroupDto> subjectGroupDtos = subjectGroupService.findAll().stream().collect(Collectors.toSet());
		List<ResponseTaskDto> responseTasks = new LinkedList<>();

		List<TaskDto> taskDtos = taskService.findAllTask();

		if (!CollectionUtils.isEmpty(taskDtos)) {
			responseTasks = taskDtos.stream().map(item -> {
				ResponseTaskDto response = new ResponseTaskDto();
				response = convertToResponse(item, response, taskPlaceAddressDtos, subjectGroupDtos);
				return response;
			}).collect(Collectors.toList());
		}

		return responseTasks;
	}

	private ResponseTaskDto convertToResponse(TaskDto dto, ResponseTaskDto response,
			Set<TaskPlaceAddressDto> taskPlaceAddressDtos, Set<SubjectGroupDto> subjectGroupDtos) {
		response = ObjectMapperUtils.map(dto, ResponseTaskDto.class);

		Set<String> subjectGroupIds = dto.getSubjectGroupIds();
		if (!CollectionUtils.isEmpty(subjectGroupIds)) {
			subjectGroupDtos = subjectGroupDtos.stream()
					.filter(sub -> subjectGroupIds.stream().anyMatch(item -> sub.getId().equals(item)))
					.collect(Collectors.toSet());
			response.setSubjectGroups(subjectGroupDtos);
		}

		taskPlaceAddressDtos = taskPlaceAddressDtos.stream().filter(item -> item.getTaskId().equals(dto.getId()))
				.collect(Collectors.toSet());
		response.setTaskPlaceAddressDtos(taskPlaceAddressDtos);
		return response;
	}

	@Override
	public ResponseTaskDto findByTaskId(String taskId) {
		TaskDto taskDto = taskService.findByTaskId(taskId);
		if (taskDto != null) {
			Set<TaskPlaceAddressDto> taskPlaceAddressDtos = taskPlaceAdressService.findAll().stream()
					.collect(Collectors.toSet());
			Set<SubjectGroupDto> subjectGroupDtos = subjectGroupService.findAll().stream().collect(Collectors.toSet());
			ResponseTaskDto response = new ResponseTaskDto();
			response = convertToResponse(taskDto, response, taskPlaceAddressDtos, subjectGroupDtos);
			return response;
		}
		return null;
	}

}
