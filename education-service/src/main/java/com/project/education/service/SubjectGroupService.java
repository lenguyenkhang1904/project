package com.project.education.service;

import java.util.List;

import com.project.education.dto.SubjectGroupDto;

public interface SubjectGroupService {

	List<SubjectGroupDto> findAll();
	
	SubjectGroupDto findById(final String id);
}
