package com.project.projectWs.facade;

import java.util.List;

import com.project.projectWs.dto.RequestSaveTutorInvitationDto;
import com.project.projectWs.dto.RequestUpdateTutorInvitationDto;
import com.project.projectWs.dto.ResponseTutorInvitationDto;

public interface TutorInvitationFacade {

	String saveTutorInvitation(final RequestSaveTutorInvitationDto request);

	String updateTutorInvitation(final RequestUpdateTutorInvitationDto request);

	void deleteTutorInvitationById(final String id);

	List<ResponseTutorInvitationDto> findTutorInvitation();

	ResponseTutorInvitationDto findTutorInterestById(String id);

}
