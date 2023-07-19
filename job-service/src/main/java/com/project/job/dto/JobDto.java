package com.project.job.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class JobDto implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String id;
	
	private String taskId;

	private Long tutorId;
	
	private String applicationId;
	
	private String verifiedTutorInfo;
	
	private String adviceToTutor;
	
	private TaskByTheTimeCreatingDto taskByTheTimeCreatingDto;
	
	private TutorByTheTimeCreatingJobDto tutorByTheTimeCreatingJobDto;

	private String createdBy;  

 }
