package com.project.task.service;

import java.util.List;

import com.project.task.dto.TaskDto;

public interface TaskService {
	String createTask(TaskDto dto);
	
	String updateTask(TaskDto dto);
	
	List<String> getSubjectGroupsByTaskId(String taskId);

}
