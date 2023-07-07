package com.project.task.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RegistrationDto implements Serializable  {

	private static final long serialVersionUID = 1L;

	private String id;
	
	private String registerAndLearnerAre;

	private String registerAndLearnerId;
	
	private String taskId;
	
	private String createdBy;
}
