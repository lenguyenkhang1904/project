package com.project.job.service;

import com.project.job.dto.JobDto;

public interface JobService {
	
	String createJob(JobDto dto);
	
	String updateJob(JobDto dto);
}
