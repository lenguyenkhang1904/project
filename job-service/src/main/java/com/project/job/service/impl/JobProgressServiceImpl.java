package com.project.job.service.impl;

import java.util.Date;
import java.util.Optional;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.DateConverter;
import com.project.common.utils.ObjectMapperUtils;
import com.project.job.dto.JobProgressDto;
import com.project.job.entity.Job;
import com.project.job.entity.JobProgress;
import com.project.job.repository.JobProgressRepository;
import com.project.job.repository.JobRepository;
import com.project.job.service.JobProgressService;

@Service
public class JobProgressServiceImpl implements JobProgressService {

	@Autowired
	private JobProgressRepository repository;

	@Autowired
	private JobRepository jobRepository;

	@Override
	public String createJobProgress(JobProgressDto dto) {
		JobProgress entity = new JobProgress();
		entity = ObjectMapperUtils.map(dto, JobProgress.class);
		entity.setCreatedAt(DateConverter.convertDateToLocalDateTime(new Date()));
		entity.setCreatedBy(dto.getCreatedBy());

		Optional<Job> jobOpt = jobRepository.findById(dto.getJobId());
		if (!jobOpt.isEmpty()) {
			Job job = jobOpt.get();
			entity.setJob(job);
		}

		return repository.save(entity).getId();
	}

	@Override
	public String updateJobProgress(JobProgressDto dto) {
		Optional<JobProgress> jobProgressOpt = repository.findById(dto.getId());
		if (!jobProgressOpt.isEmpty()) {
			JobProgress jobProgress = jobProgressOpt.get();
			jobProgress = ObjectMapperUtils.map(dto, JobProgress.class);
			jobProgress.setUpdatedAt(DateConverter.convertDateToLocalDateTime(new Date()));
			jobProgress.setUpdatedBy(dto.getCreatedBy());

			Optional<Job> jobOpt = jobRepository.findById(dto.getJobId());
			if (!jobOpt.isEmpty()) {
				Job job = jobOpt.get();
				jobProgress.setJob(job);
			}

			return repository.save(jobProgress).getId();
		}
		return StringUtils.EMPTY;
	}

}
