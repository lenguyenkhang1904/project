package com.project.job.service;

import java.util.List;

import com.project.job.dto.JobDto;

public interface JobService {
	
	String createJob(JobDto dto);
	
	String updateJob(JobDto dto);
	
	List<JobDto> findAll();
	
	JobDto findById(String id);
	
	JobDto getLastestUpdateJob();
}
