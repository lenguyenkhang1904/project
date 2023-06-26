package com.project.projectWs.facade.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.project.common.utils.ObjectMapperUtils;
import com.project.location.dto.TaskPlaceAddressDto;
import com.project.location.service.TaskPlaceAdressService;
import com.project.projectWs.dto.RequestSaveTaskDto;
import com.project.projectWs.dto.RequestUpdateTaskDto;
import com.project.projectWs.facade.TaskFacade;
import com.project.projectWs.facade.UserFacade;
import com.project.task.dto.TaskDto;
import com.project.task.service.TaskService;

@Service
public class TaskFacadeImpl implements TaskFacade {
	

	@Autowired
	private TaskService taskService;

	@Autowired
	private TaskPlaceAdressService taskPlaceAdressService;

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
			taskPlaceAdressService.saveAll(taskPlaceAddressDtos , taskId,
					userFacade.getCurrentUser());
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
			taskPlaceAdressService.saveAll(taskPlaceAddressDtos , taskId,
					userFacade.getCurrentUser());
			return taskId;
		}
		return StringUtils.EMPTY;
	}

}
