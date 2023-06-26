package com.project.location.service;

import java.util.List;

import com.project.location.dto.TaskPlaceAddressDto;

public interface TaskPlaceAdressService {
	
	String save(TaskPlaceAddressDto dto);
	
	void saveAll(List<TaskPlaceAddressDto> dtos, String taskId, String currentUser);
	
	List<TaskPlaceAddressDto> findAll();

}
