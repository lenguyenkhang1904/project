package com.project.education.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.ObjectMapperUtils;
import com.project.education.dto.SubjectGroupDto;
import com.project.education.entity.SubjectGroup;
import com.project.education.repository.SubjectGroupRepository;
import com.project.education.service.SubjectGroupService;

@Service
public class SubjectGroupServiceImpl implements SubjectGroupService {
	
	@Autowired
	private SubjectGroupRepository subjectGroupRepository;

	@Override
	public List<SubjectGroupDto> findAll() {
		return ObjectMapperUtils.mapAll(subjectGroupRepository.findAll(), SubjectGroupDto.class);
	}

	@Override
	public SubjectGroupDto findById(String id) {
		Optional<SubjectGroup> subjectGroupOpt = subjectGroupRepository.findById(id);		
		if(!subjectGroupOpt.isEmpty()) {
			SubjectGroup subjectGroup = subjectGroupOpt.get();	
			SubjectGroupDto subjectGroupDto = ObjectMapperUtils.map(subjectGroup, SubjectGroupDto.class);
			return subjectGroupDto;
		}
		return null;
	}

}
