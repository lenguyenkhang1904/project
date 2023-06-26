package com.project.projectWs.facade;

import com.project.projectWs.dto.RequestSaveApplicationDto;
import com.project.projectWs.dto.RequestUpdateApplicationDto;

public interface ApplicationFacade {
	
	String createApplication(RequestSaveApplicationDto dto);
	
	String updateApplication(RequestUpdateApplicationDto dto);

}
