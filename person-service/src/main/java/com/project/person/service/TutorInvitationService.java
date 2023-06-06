package com.project.person.service;

import com.project.person.dto.TutorInvitationDto;

public interface TutorInvitationService {
	
	String saveTutorInvitation(final TutorInvitationDto dto);

	String updateTutorInvitation(final TutorInvitationDto dto);

	void deleteById(final String id);

}
