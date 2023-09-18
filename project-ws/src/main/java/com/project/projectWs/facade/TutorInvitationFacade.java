package com.project.projectWs.facade;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.mail.MessagingException;

import com.project.projectWs.dto.RequestEmailInvitationToTutor;
import com.project.projectWs.dto.RequestSaveTutorInvitationDto;
import com.project.projectWs.dto.RequestUpdateTutorInvitationDto;
import com.project.projectWs.dto.ResponseTutorInvitationDto;

public interface TutorInvitationFacade {

	String saveTutorInvitation(final RequestSaveTutorInvitationDto request);

	String updateTutorInvitation(final RequestUpdateTutorInvitationDto request);

	void deleteTutorInvitationById(final String id);

	List<ResponseTutorInvitationDto> findTutorInvitation(Long id);

	ResponseTutorInvitationDto findTutorInterestById(String id);

	String sendRequest(RequestEmailInvitationToTutor request) throws UnsupportedEncodingException, MessagingException;

}
