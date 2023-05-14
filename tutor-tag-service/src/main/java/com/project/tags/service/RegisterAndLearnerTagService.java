package com.project.tags.service;

import com.project.tags.dto.RegisterAndLearnerTagDto;

public interface RegisterAndLearnerTagService {

	String create(RegisterAndLearnerTagDto dto);

	String update(RegisterAndLearnerTagDto dto);

	boolean checkExistIdofRegisterAndLearnerTag(String id);

	void deleteById(String id);
}
