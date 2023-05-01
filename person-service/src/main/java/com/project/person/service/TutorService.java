package com.project.person.service;

import java.util.List;

import com.project.person.dto.AreaTutorDto;
import com.project.person.dto.TutorDto;

public interface TutorService {
	Long saveTutor(final TutorDto dto);
	
	List<AreaTutorDto> findAllTutor();
}
