package com.project.projectWs.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RequestSaveTutorInvitationDto implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String registerAndLearnerId;
	
	private String learnerAndReqisterPhone;
	
	private Long tutorId;
	
	private String note;

}
