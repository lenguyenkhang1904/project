package com.project.projectWs.facade;

import java.util.List;

import com.project.projectWs.dto.RequestSaveTutorInterestDto;
import com.project.projectWs.dto.RequestUpdateTutorInvitationDto;
import com.project.projectWs.dto.ResponseTutorInterestDto;

public interface TutorInterestFacade {

	String saveTutorInterest(RequestSaveTutorInterestDto request);

	String updateTutorInterest(RequestUpdateTutorInvitationDto request);

	void deleteTutorInterestById(String id);

	List<ResponseTutorInterestDto> findAllTutorInterest(Long tutorId);

	ResponseTutorInterestDto findTutorInterestById(String id);

}
