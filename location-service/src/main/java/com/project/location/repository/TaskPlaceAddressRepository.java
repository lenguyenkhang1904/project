package com.project.location.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.location.entity.TaskPlaceAddress;

public interface TaskPlaceAddressRepository extends JpaRepository<TaskPlaceAddress, String> {
	
	void deleteByTaskId(final String taskId);
	
	List<TaskPlaceAddress> findByTaskId(String taskId);

}
