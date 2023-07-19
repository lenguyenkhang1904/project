package com.project.job.service;

import com.project.job.dto.JobProgressDto;

public interface JobProgressService {
	
	String createJobProgress(JobProgressDto dto);
	
	String updateJobProgress(JobProgressDto dto);
}
