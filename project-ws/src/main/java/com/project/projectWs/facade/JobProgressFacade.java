package com.project.projectWs.facade;

import com.project.projectWs.dto.RequestSaveJobProgress;
import com.project.projectWs.dto.RequestUpdateJobProgress;

public interface JobProgressFacade {
	
	String createJobProgress(RequestSaveJobProgress request);
	
	String updateJobProgress(RequestUpdateJobProgress request);
}
