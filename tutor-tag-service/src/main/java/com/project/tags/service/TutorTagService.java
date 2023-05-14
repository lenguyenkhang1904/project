package com.project.tags.service;

import com.project.tags.dto.TutorTagDto;

public interface TutorTagService {
	
	String create(TutorTagDto dto);

	String update(TutorTagDto dto);

	boolean checkExistIdofTutorTag(String id);

	void deleteById(String id);

}
