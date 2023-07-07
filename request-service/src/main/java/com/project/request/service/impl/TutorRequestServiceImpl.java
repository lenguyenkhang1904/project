package com.project.request.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.DateConverter;
import com.project.common.utils.ObjectMapperUtils;
import com.project.request.dto.TutorRequestDto;
import com.project.request.entity.TutorRequest;
import com.project.request.repository.TutorRequestRepository;
import com.project.request.service.TutorRequestService;

@Service
public class TutorRequestServiceImpl implements TutorRequestService {
	
	@Autowired
	private TutorRequestRepository repo;

	@Override
	public String saveTutorRequest(TutorRequestDto dto) {
		TutorRequest entity = new TutorRequest();
		entity = ObjectMapperUtils.map(dto, TutorRequest.class);
		entity.setCreatedAt(DateConverter.convertDateToLocalDateTime(new Date()));
		entity.setCreatedBy(dto.getCreatedBy());
		return repo.save(entity).getId();
	}

	@Override
	public String updateTutorRequest(TutorRequestDto dto) {
		Optional<TutorRequest> entityOpt = repo.findById(dto.getId());
		if(!entityOpt.isEmpty()) {
			TutorRequest entity = entityOpt.get();
			entity = ObjectMapperUtils.map(dto, TutorRequest.class);
			entity.setUpdatedAt(DateConverter.convertDateToLocalDateTime(new Date()));
			entity.setUpdatedBy(dto.getCreatedBy());
			return repo.save(entity).getId();
		}
		return StringUtils.EMPTY;
	}

	@Override
	public List<TutorRequestDto> findAll() {
		List<TutorRequest> entities = repo.findAll();
		return ObjectMapperUtils.mapAll(entities, TutorRequestDto.class);
	}

	@Override
	public TutorRequestDto findById(String id) {
		Optional<TutorRequest> entityOpt = repo.findById(id);
		if(!entityOpt.isEmpty()) {
			TutorRequest entity = entityOpt.get();
			TutorRequestDto dto = new TutorRequestDto();
			dto = ObjectMapperUtils.map(entity, TutorRequestDto.class);
			return dto;
		}
		return null;
	}

	@Override
	public void deleteById(String id) {
		repo.deleteById(id);	
	}

}
