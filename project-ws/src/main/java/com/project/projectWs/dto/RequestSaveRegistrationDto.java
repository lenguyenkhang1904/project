package com.project.projectWs.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class RequestSaveRegistrationDto implements Serializable  {
	
	private static final long serialVersionUID = 1L;
	
	private String registerAndLearnerAre;

	private String registerAndLearnerId;
	
	private String taskId;
}
