package com.project.projectWs.facade;

import java.util.List;

import com.project.education.dto.SubjectGroupDto;

public interface SubjectGroupFacade {

	List<SubjectGroupDto> findAll();
	
	SubjectGroupDto findById(final String id);
}
