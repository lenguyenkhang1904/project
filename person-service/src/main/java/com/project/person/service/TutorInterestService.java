package com.project.person.service;

import java.util.List;
import java.util.Optional;

import com.project.person.dto.TutorInterestDto;
import com.project.person.entity.TutorInterest;

public interface TutorInterestService {

	void deleteById(String id);

	List<TutorInterest> findAll(Long tutorId);

	String updateTutorInvitation(TutorInterestDto dto);

	String saveTutorInvitation(TutorInterestDto dto);
	
	Optional<TutorInterest> findById(String id);

}
