package com.project.projectWs.facade.impl;

import java.util.LinkedList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.ObjectMapperUtils;
import com.project.person.dto.TutorInterestDto;
import com.project.person.entity.TutorInterest;
import com.project.person.service.TutorInterestService;
import com.project.projectWs.dto.RequestSaveTutorInterestDto;
import com.project.projectWs.dto.RequestUpdateTutorInvitationDto;
import com.project.projectWs.dto.ResponseRegisterAndLearnerBasicInfo;
import com.project.projectWs.dto.ResponseTutorBasicInfo;
import com.project.projectWs.dto.ResponseTutorInterestDto;
import com.project.projectWs.facade.TutorInterestFacade;
import com.project.projectWs.facade.UserFacade;

@Service
public class TutorInterestFacadeImpl implements TutorInterestFacade {

	@Autowired
	private TutorInterestService tutorInterestService;

	@Autowired
	private UserFacade userFacade;

	@Override
	public String saveTutorInterest(RequestSaveTutorInterestDto request) {
		TutorInterestDto tutorInterestDto = new TutorInterestDto();
		tutorInterestDto = ObjectMapperUtils.map(request, TutorInterestDto.class);
		tutorInterestDto.setCreateBy(userFacade.getCurrentUser());
		return tutorInterestService.saveTutorInvitation(tutorInterestDto);
	}

	@Override
	public String updateTutorInterest(RequestUpdateTutorInvitationDto request) {
		TutorInterestDto tutorInterestDto = new TutorInterestDto();
		tutorInterestDto = ObjectMapperUtils.map(request, TutorInterestDto.class);
		tutorInterestDto.setCreateBy(userFacade.getCurrentUser());
		return tutorInterestService.updateTutorInvitation(tutorInterestDto);
	}

	@Override
	public void deleteTutorInterestById(String id) {
		tutorInterestService.deleteById(id);
	}

	@Override
	public List<ResponseTutorInterestDto> findAllTutorInterest() {
		List<TutorInterest> tutorInterestFromDBs = tutorInterestService.findAll();
		List<ResponseTutorInterestDto> tutorInvitationResponse = new LinkedList<>();
		tutorInterestFromDBs.forEach(item -> {
			ResponseTutorInterestDto response = new ResponseTutorInterestDto();
			response = ObjectMapperUtils.map(item, ResponseTutorInterestDto.class);
			ResponseTutorBasicInfo tutor = ObjectMapperUtils.map(item.getTutor(), ResponseTutorBasicInfo.class);
			response.setTutor(tutor);
			ResponseRegisterAndLearnerBasicInfo registerAndLearner = ObjectMapperUtils.map(item.getRegisterAndLearner(),
					ResponseRegisterAndLearnerBasicInfo.class);
			response.setRegisterAndLearner(registerAndLearner);
			tutorInvitationResponse.add(response);
		});
		return tutorInvitationResponse;
	}

	@Override
	public ResponseTutorInterestDto findTutorInterestById(String id) {
		Optional<TutorInterest> tutorInterestOpt = tutorInterestService.findById(id);
		if(!tutorInterestOpt.isEmpty()) {
			TutorInterest tutorInterest = tutorInterestOpt.get();
			ResponseTutorInterestDto response = new ResponseTutorInterestDto();
			response = ObjectMapperUtils.map(tutorInterest, ResponseTutorInterestDto.class);
			ResponseTutorBasicInfo tutor = ObjectMapperUtils.map(tutorInterest.getTutor(), ResponseTutorBasicInfo.class);
			response.setTutor(tutor);
			ResponseRegisterAndLearnerBasicInfo registerAndLearner = ObjectMapperUtils.map(tutorInterest.getRegisterAndLearner(),
					ResponseRegisterAndLearnerBasicInfo.class);
			response.setRegisterAndLearner(registerAndLearner);
			return response;
		}
		return null;
	}

}
