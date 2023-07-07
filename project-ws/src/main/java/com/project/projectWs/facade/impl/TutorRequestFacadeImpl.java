package com.project.projectWs.facade.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.projectWs.facade.TutorRequestFacade;
import com.project.projectWs.facade.UserFacade;
import com.project.request.dto.TutorRequestDto;
import com.project.request.service.TutorRequestService;

@Service
public class TutorRequestFacadeImpl implements TutorRequestFacade {

	@Autowired
	private TutorRequestService tutorRequestService;

	@Autowired
	private UserFacade userFacade;

	@Override
	public String saveTutorRequest(TutorRequestDto dto) {
		dto.setCreatedBy(userFacade.getCurrentUser());
		return tutorRequestService.saveTutorRequest(dto);
	}

	@Override
	public String updateTutorRequest(TutorRequestDto dto) {
		dto.setCreatedBy(userFacade.getCurrentUser());
		return tutorRequestService.updateTutorRequest(dto);
	}

	@Override
	public List<TutorRequestDto> findAll() {
		return tutorRequestService.findAll();
	}

	@Override
	public TutorRequestDto findById(String id) {
		return tutorRequestService.findById(id);
	}

	@Override
	public void deleteById(String id) {
		tutorRequestService.deleteById(id);
	}

}
