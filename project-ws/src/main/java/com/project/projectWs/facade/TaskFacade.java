package com.project.projectWs.facade;

import java.util.List;

import com.project.projectWs.dto.RequestSaveTaskDto;
import com.project.projectWs.dto.RequestUpdateTaskDto;
import com.project.projectWs.dto.ResponseTaskDto;

public interface TaskFacade {
	
	String save(RequestSaveTaskDto dto);
	
	String update(RequestUpdateTaskDto dto);
	
	List<ResponseTaskDto> findAllTask();
	
	ResponseTaskDto findByTaskId(String taskId);

}
