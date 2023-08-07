package com.project.projectWs.dto;

import java.io.Serializable;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import com.project.finance.dto.JobFinanceDto;
import com.project.job.dto.JobProgressDto;
import com.project.job.dto.TaskByTheTimeCreatingDto;
import com.project.job.dto.TutorByTheTimeCreatingJobDto;
import com.project.task.dto.ApplicationDto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ResponseJobDto implements Serializable  {

	private static final long serialVersionUID = 1L;
	
	private String id;
	
	private TaskByTheTimeCreatingDto taskByTheTimeCreatingDto;
	
	private TutorByTheTimeCreatingJobDto tutorByTheTimeCreatingJobDto;
	
	private ApplicationDto application;
	
	private String applicationId;
	
	private String verifiedTutorInfo;
	
	private List<String> retainedImgsIdentification = new LinkedList<>();
	
	private String adviceToTutor;
	
	private Set<JobProgressDto> jobProgressDtos = new HashSet<>();
	
	private Set<JobFinanceDto> jobFinanceDtos = new HashSet<>();
}
