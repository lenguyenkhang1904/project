package com.project.projectWs.facade.impl;

import java.io.UnsupportedEncodingException;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;

import javax.mail.MessagingException;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.ObjectMapperUtils;
import com.project.person.dto.TutorInvitationDto;
import com.project.person.entity.TutorInvitation;
import com.project.person.service.TutorInvitationService;
import com.project.projectWs.dto.RequestEmailInvitationToTutor;
import com.project.projectWs.dto.RequestSaveTutorInvitationDto;
import com.project.projectWs.dto.RequestUpdateTutorInvitationDto;
import com.project.projectWs.dto.ResponseRegisterAndLearnerBasicInfo;
import com.project.projectWs.dto.ResponseTutorBasicInfo;
import com.project.projectWs.dto.ResponseTutorInvitationDto;
import com.project.projectWs.facade.TutorInvitationFacade;
import com.project.projectWs.facade.UserFacade;
import com.project.projectWs.mail.EmailUtils;
import com.project.projectWs.utils.TemplateHTMLForEmail;

@Service
public class TutorInvitationFacadeImpl implements TutorInvitationFacade {

	@Autowired
	private TutorInvitationService tutorInvitationService;

	@Autowired
	private UserFacade userFacade;

	@Autowired
	private EmailUtils emailUtils;

	@Override
	public String saveTutorInvitation(RequestSaveTutorInvitationDto request) {
		TutorInvitationDto tutorInvitationDto = new TutorInvitationDto();
		tutorInvitationDto = ObjectMapperUtils.map(request, TutorInvitationDto.class);
		tutorInvitationDto.setCreateBy(userFacade.getCurrentUser());
		return tutorInvitationService.saveTutorInvitation(tutorInvitationDto);
	}

	@Override
	public String updateTutorInvitation(RequestUpdateTutorInvitationDto request) {
		TutorInvitationDto tutorInvitationDto = new TutorInvitationDto();
		tutorInvitationDto = ObjectMapperUtils.map(request, TutorInvitationDto.class);
		tutorInvitationDto.setCreateBy(userFacade.getCurrentUser());
		return tutorInvitationService.updateTutorInvitation(tutorInvitationDto);
	}

	@Override
	public void deleteTutorInvitationById(String id) {
		tutorInvitationService.deleteById(id);
	}

	@Override
	public List<ResponseTutorInvitationDto> findTutorInvitation(Long id) {
		List<TutorInvitation> tutorInvitationFromDBs = tutorInvitationService.findAll(id);
		List<ResponseTutorInvitationDto> tutorInvitationResponse = new LinkedList<>();
		tutorInvitationFromDBs.forEach(item -> {
			ResponseTutorInvitationDto response = new ResponseTutorInvitationDto();
			response = ObjectMapperUtils.map(item, ResponseTutorInvitationDto.class);
			ResponseTutorBasicInfo tutor = ObjectMapperUtils.map(item.getTutor(), ResponseTutorBasicInfo.class);
			response.setTutor(tutor);
			if(item.getRegisterAndLearner() != null) {
				ResponseRegisterAndLearnerBasicInfo registerAndLearner = ObjectMapperUtils.map(item.getRegisterAndLearner(),
						ResponseRegisterAndLearnerBasicInfo.class);
				response.setRegisterAndLearner(registerAndLearner);
			}

			tutorInvitationResponse.add(response);
		});
		return tutorInvitationResponse;
	}

	@Override
	public ResponseTutorInvitationDto findTutorInterestById(String id) {
		Optional<TutorInvitation> tutorInvitationOpt = tutorInvitationService.findById(id);
		if (!tutorInvitationOpt.isEmpty()) {
			TutorInvitation tutorInvitation = tutorInvitationOpt.get();
			ResponseTutorInvitationDto response = new ResponseTutorInvitationDto();
			response = ObjectMapperUtils.map(tutorInvitation, ResponseTutorInvitationDto.class);
			ResponseTutorBasicInfo tutor = ObjectMapperUtils.map(tutorInvitation.getTutor(),
					ResponseTutorBasicInfo.class);
			response.setTutor(tutor);
			ResponseRegisterAndLearnerBasicInfo registerAndLearner = ObjectMapperUtils
					.map(tutorInvitation.getRegisterAndLearner(), ResponseRegisterAndLearnerBasicInfo.class);
			response.setRegisterAndLearner(registerAndLearner);
			return response;
		}
		return null;
	}

	@Override
	public String sendRequest(RequestEmailInvitationToTutor request)
			throws UnsupportedEncodingException, MessagingException {
		Optional<TutorInvitation> tutorInvitationOpt = tutorInvitationService
				.findTutorIdAndRegisterId(request.getTutorId(), request.getReId());
		;
		if (!tutorInvitationOpt.isEmpty()) {
			TutorInvitation tutorInvitation = tutorInvitationOpt.get();
			ResponseTutorInvitationDto response = new ResponseTutorInvitationDto();
			response = ObjectMapperUtils.map(tutorInvitation, ResponseTutorInvitationDto.class);

			ResponseTutorBasicInfo tutor = ObjectMapperUtils.map(tutorInvitation.getTutor(),
					ResponseTutorBasicInfo.class);
			response.setTutor(tutor);
			ResponseRegisterAndLearnerBasicInfo registerAndLearner = ObjectMapperUtils
					.map(tutorInvitation.getRegisterAndLearner(), ResponseRegisterAndLearnerBasicInfo.class);
			response.setRegisterAndLearner(registerAndLearner);
			List<String> content = TemplateHTMLForEmail
					.templateGenearateSendIntivation(response.getTutor().getFullName(), response);

			emailUtils.sendEmail(request.getEmail(), content.get(0), content.get(1));

			return "Invited to Tutor";
		}
		return StringUtils.EMPTY;
	}

}
