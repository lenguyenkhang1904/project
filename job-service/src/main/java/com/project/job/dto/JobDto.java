package com.project.job.dto;

import java.io.Serializable;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.persistence.EnumType;
import javax.persistence.Enumerated;

import com.project.common.utils.JobResult;

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
	
	private List<String> retainedImgsIdentification = new LinkedList<>();
	
	private TaskByTheTimeCreatingDto taskByTheTimeCreatingDto;
	
	private TutorByTheTimeCreatingJobDto tutorByTheTimeCreatingJobDto;

	private String createdBy;
	
	private Set<JobProgressDto> jobProgresseDtos = new HashSet<>();

	private JobResult jobResult;
	
	private String failReason;
	
	private Boolean findAnotherTutorIfFail;

 }
