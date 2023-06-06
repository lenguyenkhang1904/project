package com.project.projectWs.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class RequestUpdateTutorInvitationDto implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String id;
	
	private String registerAndLearnerId;
	
	private Long tutorId;
	
	private String note;

}
