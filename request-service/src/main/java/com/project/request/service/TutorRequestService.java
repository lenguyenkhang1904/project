package com.project.request.service;

import java.util.List;

import com.project.request.dto.TutorRequestDto;

public interface TutorRequestService {
	
	String saveTutorRequest(TutorRequestDto dto);
	
	String updateTutorRequest(TutorRequestDto dto);
	
	List<TutorRequestDto> findAll();
	
	TutorRequestDto findById(String id);
	
	void deleteById(String id);

}
