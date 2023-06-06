package com.project.projectWs.facade;

import com.project.projectWs.dto.RequestSaveTutorInvitationDto;
import com.project.projectWs.dto.RequestUpdateTutorInvitationDto;

public interface TutorInvitationFacade {

	String saveTutorInvitation(final RequestSaveTutorInvitationDto request);

	String updateTutorInvitation(final RequestUpdateTutorInvitationDto request);

	void deleteTutorInvitationById(final String id);

}
