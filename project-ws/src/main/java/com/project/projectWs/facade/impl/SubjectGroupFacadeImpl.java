package com.project.projectWs.facade.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.education.dto.SubjectGroupDto;
import com.project.education.service.SubjectGroupService;
import com.project.projectWs.facade.SubjectGroupFacade;

@Service
public class SubjectGroupFacadeImpl implements SubjectGroupFacade {
	
	@Autowired
	private SubjectGroupService subjectGroupService;

	@Override
	public List<SubjectGroupDto> findAll() {
		return subjectGroupService.findAll();
	}

	@Override
	public SubjectGroupDto findById(String id) {
		return subjectGroupService.findById(id);
	}

}
