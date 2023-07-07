package com.project.person.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class TutorInvitationDto implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String id;
	
	private String registerAndLearnerId;
	
    private String learnerAndReqisterPhone;
	
	private Long tutorId;
	
	private String note;
	
	private String createBy;
}
