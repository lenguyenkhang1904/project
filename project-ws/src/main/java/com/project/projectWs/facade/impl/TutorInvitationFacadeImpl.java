package com.project.projectWs.facade.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.ObjectMapperUtils;
import com.project.person.dto.TutorInvitationDto;
import com.project.person.service.TutorInvitationService;
import com.project.projectWs.dto.RequestSaveTutorInvitationDto;
import com.project.projectWs.dto.RequestUpdateTutorInvitationDto;
import com.project.projectWs.facade.TutorInvitationFacade;
import com.project.projectWs.facade.UserFacade;

@Service
public class TutorInvitationFacadeImpl implements TutorInvitationFacade {
	
	@Autowired
	private TutorInvitationService tutorInvitationService;
	
	@Autowired
	private UserFacade userFacade;

	@Override
	public String saveTutorInvitation(RequestSaveTutorInvitationDto request) {
		TutorInvitationDto tutorInvitationDto = new TutorInvitationDto();
		tutorInvitationDto = ObjectMapperUtils.map(tutorInvitationDto, TutorInvitationDto.class);
		tutorInvitationDto.setCreateBy(userFacade.getCurrentUser());
		return tutorInvitationService.saveTutorInvitation(tutorInvitationDto);
	}

	@Override
	public String updateTutorInvitation(RequestUpdateTutorInvitationDto request) {
		TutorInvitationDto tutorInvitationDto = new TutorInvitationDto();
		tutorInvitationDto = ObjectMapperUtils.map(tutorInvitationDto, TutorInvitationDto.class);
		tutorInvitationDto.setCreateBy(userFacade.getCurrentUser());
		return tutorInvitationService.updateTutorInvitation(tutorInvitationDto);
	}

	@Override
	public void deleteTutorInvitationById(String id) {
		tutorInvitationService.deleteById(id);
	}

}
