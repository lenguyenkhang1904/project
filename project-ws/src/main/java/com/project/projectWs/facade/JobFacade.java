package com.project.projectWs.facade;

import com.project.projectWs.dto.RequestSaveJob;
import com.project.projectWs.dto.RequestUpdateJobDto;

public interface JobFacade {
	
	String createJob(RequestSaveJob request);
	
	String updateJob(RequestUpdateJobDto request);
}
