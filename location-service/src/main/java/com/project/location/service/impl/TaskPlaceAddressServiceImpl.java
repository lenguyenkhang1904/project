package com.project.location.service.impl;

import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.DateConverter;
import com.project.common.utils.ObjectMapperUtils;
import com.project.location.dto.TaskPlaceAddressDto;
import com.project.location.entity.Area;
import com.project.location.entity.TaskPlaceAddress;
import com.project.location.repository.AreaRepository;
import com.project.location.repository.TaskPlaceAddressRepository;
import com.project.location.service.TaskPlaceAddressService;

@Service
public class TaskPlaceAddressServiceImpl implements TaskPlaceAddressService {

	@Autowired
	private TaskPlaceAddressRepository taskPlaceAddressRepository;
	
	@Autowired
	private AreaRepository areaRepository;

	@Override
	public String save(TaskPlaceAddressDto dto) {
		TaskPlaceAddress taskPlaceAddress = new TaskPlaceAddress();
		taskPlaceAddress = ObjectMapperUtils.map(dto, TaskPlaceAddress.class);
		return taskPlaceAddressRepository.save(taskPlaceAddress).getId();
	}

	@Override
	public void saveAll(List<TaskPlaceAddressDto> dtos, String taskId, String currentUser) {
		List<TaskPlaceAddress> taskPlaceAddresses = new LinkedList<>();
		taskPlaceAddressRepository.deleteByTaskId(taskId);
		for(TaskPlaceAddressDto dto : dtos) {
			TaskPlaceAddress taskPlaceAddress = new TaskPlaceAddress();
			taskPlaceAddress = ObjectMapperUtils.map(dto, TaskPlaceAddress.class);
			taskPlaceAddress.setTaskId(taskId);
			taskPlaceAddress.setCreatedAt(DateConverter.convertDateToLocalDateTime(new java.util.Date()));
			taskPlaceAddress.setCreatedBy(currentUser);
			Area area = areaRepository.findById(dto.getAreaId()).get();
			taskPlaceAddress.setArea(area);
			taskPlaceAddresses.add(taskPlaceAddress);
		}
		taskPlaceAddressRepository.saveAll(taskPlaceAddresses);
	}

	@Override
	public List<TaskPlaceAddressDto> findAll() {
		return ObjectMapperUtils.mapAll(taskPlaceAddressRepository.findAll(), TaskPlaceAddressDto.class);
	}

	@Override
	public List<TaskPlaceAddressDto> findByTaskId(String taskId) {
		List<TaskPlaceAddress> entities = taskPlaceAddressRepository.findByTaskId(taskId);
		return ObjectMapperUtils.mapAll(entities, TaskPlaceAddressDto.class);
	}
}
