package com.project.job.service.impl;

import java.util.Date;
import java.util.Optional;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.DateConverter;
import com.project.common.utils.ObjectMapperUtils;
import com.project.job.dto.JobDto;
import com.project.job.dto.TaskByTheTimeCreatingDto;
import com.project.job.dto.TutorByTheTimeCreatingJobDto;
import com.project.job.entity.Job;
import com.project.job.entity.TaskByTheTimeCreatingJob;
import com.project.job.entity.TutorByTheTimeCreatingJob;
import com.project.job.repository.JobRepository;
import com.project.job.repository.TaskByTheTimeCreatingJobRepository;
import com.project.job.repository.TutorByTheTimeCreatingJobRepository;
import com.project.job.service.JobService;

@Service
public class JobServiceImpl implements JobService {

	@Autowired
	private JobRepository jobRepo;

	@Autowired
	private TaskByTheTimeCreatingJobRepository byTheTimeCreatingJobRepo;

	@Autowired
	private TutorByTheTimeCreatingJobRepository tutorByTheTimeCreatingJobRepo;

	@Override
	public String createJob(JobDto dto) {
		Job job = new Job();
		String id = mapDtoToObject(dto, job, false);
		return id;
	}

	private String mapDtoToObject(JobDto dto, Job job, boolean isUpdated) {
		job = ObjectMapperUtils.map(dto, Job.class);
		final String currentUser = dto.getCreatedBy();
		if (isUpdated) {
			job.setUpdatedBy(currentUser);
			job.setUpdatedAt(DateConverter.convertDateToLocalDateTime(new Date()));
		} else {
			job.setCreatedBy(currentUser);
			job.setCreatedAt(DateConverter.convertDateToLocalDateTime(new Date()));
		}

		job = jobRepo.save(job);

		TaskByTheTimeCreatingDto taskJobDto = dto.getTaskByTheTimeCreatingDto();
		if (taskJobDto != null) {
			TaskByTheTimeCreatingJob taskJob = ObjectMapperUtils.map(taskJobDto, TaskByTheTimeCreatingJob.class);
			taskJob.setJob(job);
			byTheTimeCreatingJobRepo.save(taskJob);
		}

		TutorByTheTimeCreatingJobDto tutorJobDto = dto.getTutorByTheTimeCreatingJobDto();
		if (tutorJobDto != null) {
			TutorByTheTimeCreatingJob tutorJob = ObjectMapperUtils.map(tutorJobDto, TutorByTheTimeCreatingJob.class);
			tutorJob.setJob(job);
			tutorByTheTimeCreatingJobRepo.save(tutorJob);
		}

		return job.getId();
	}

	@Override
	public String updateJob(JobDto dto) {

		Optional<Job> jobOpt = jobRepo.findById(dto.getId());

		if (!jobOpt.isEmpty()) {
			Job job = jobOpt.get();

			final String jobId = job.getId();

			byTheTimeCreatingJobRepo.deleteByJobId(jobId);

			tutorByTheTimeCreatingJobRepo.deleteByJobId(jobId);

			return jobId.equals(mapDtoToObject(dto, job, true)) ? jobId : StringUtils.EMPTY;
		}

		return StringUtils.EMPTY;
	}

}
