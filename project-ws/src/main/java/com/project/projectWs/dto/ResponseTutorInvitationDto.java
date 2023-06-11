package com.project.projectWs.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ResponseTutorInvitationDto implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private ResponseTutorBasicInfo tutor;
	
	private String learnerAndReqisterPhone;
	
	private String note;
	
	private ResponseRegisterAndLearnerBasicInfo registerAndLearner;
}
