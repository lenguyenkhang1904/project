package com.project.projectWs.facade;

import com.project.projectWs.dto.RequestSaveTaskDto;
import com.project.projectWs.dto.RequestUpdateTaskDto;

public interface TaskFacade {
	
	String save(RequestSaveTaskDto dto);
	
	String update(RequestUpdateTaskDto dto);

}
