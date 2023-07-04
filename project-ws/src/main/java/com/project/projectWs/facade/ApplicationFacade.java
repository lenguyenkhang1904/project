package com.project.projectWs.facade;

import java.util.List;

import com.project.projectWs.dto.RequestSaveApplicationDto;
import com.project.projectWs.dto.RequestUpdateApplicationDto;
import com.project.projectWs.dto.ResponseApplicationDto;

public interface ApplicationFacade {
	
	String createApplication(RequestSaveApplicationDto dto);
	
	String updateApplication(RequestUpdateApplicationDto dto);
	
	List<ResponseApplicationDto> findAllApplication();
	
	ResponseApplicationDto findById(String id);

}
