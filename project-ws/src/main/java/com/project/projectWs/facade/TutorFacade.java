package com.project.projectWs.facade;

import java.util.List;

import com.project.projectWs.dto.RequestSaveTutor;
import com.project.projectWs.dto.ResponseTutor;

public interface TutorFacade {
	Long saveTutor(final RequestSaveTutor request);
	
	List<ResponseTutor> findallTutor();

}
