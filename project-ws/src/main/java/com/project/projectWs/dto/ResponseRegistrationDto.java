package com.project.projectWs.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ResponseRegistrationDto implements Serializable  {

	private static final long serialVersionUID = 1L;

	private String id;
	
	private String registerAndLearnerAre;

	private ResponseRegisterAndLearnerBasicInfo registerAndLearner;
	
	private String createdBy;

}
