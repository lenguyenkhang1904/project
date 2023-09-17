package com.project.job.service;

import java.util.List;

import com.project.job.dto.JobDto;
import com.project.job.entity.Job;

public interface JobService {
	
	String createJob(JobDto dto);
	
	String updateJob(JobDto dto);
	
	List<JobDto> findAll();
	
	JobDto findById(String id);
	
	JobDto getLastestUpdateJob();

	List<Job> findAllSyncUp();

	void saveAll(List<Job> jobs);

}
