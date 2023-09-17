package com.project.person.service;

import java.util.List;
import java.util.Optional;

import com.project.person.dto.TutorInvitationDto;
import com.project.person.entity.TutorInvitation;

public interface TutorInvitationService {
	
	String saveTutorInvitation(final TutorInvitationDto dto);

	String updateTutorInvitation(final TutorInvitationDto dto);

	void deleteById(final String id);
	
	List<TutorInvitation> findAll(Long id);

	Optional<TutorInvitation> findById(String id);
	
	Optional<TutorInvitation> findTutorIdAndRegisterId(Long tutorId, String reId);

}
