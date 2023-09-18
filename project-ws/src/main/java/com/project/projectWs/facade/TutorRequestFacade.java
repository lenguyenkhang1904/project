package com.project.projectWs.facade;

import java.util.List;

import com.project.request.dto.TutorRequestDto;

public interface TutorRequestFacade {
	
	String saveTutorRequest(TutorRequestDto dto);

	String updateTutorRequest(TutorRequestDto dto);

	List<TutorRequestDto> findAll(Long tutorId);

	TutorRequestDto findById(String id);

	void deleteById(String id);
}
