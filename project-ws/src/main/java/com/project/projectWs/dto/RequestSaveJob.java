package com.project.projectWs.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class RequestSaveJob implements Serializable  {

	private static final long serialVersionUID = 1L;
	
	private String taskId;

	private Long tutorId;
	
	private String applicationId;
	
	private String verifiedTutorInfo;
	
	private String adviceToTutor;
}
