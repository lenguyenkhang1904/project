package com.project.location.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.location.entity.TaskPlaceAddress;

public interface TaskPlaceAddressRepository extends JpaRepository<TaskPlaceAddress, String> {
	
	void deleteByTaskId(final String taskId);

}
