package com.project.job.service;

import java.util.List;

import com.project.job.dto.JobProgressDto;

public interface JobProgressService {
	
	String createJobProgress(JobProgressDto dto);
	
	String updateJobProgress(JobProgressDto dto);

	List<JobProgressDto> findAll();
}
