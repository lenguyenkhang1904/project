package com.project.job.service.impl;

import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.transaction.Transactional;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.project.common.utils.DateConverter;
import com.project.common.utils.JobResult;
import com.project.common.utils.ObjectMapperUtils;
import com.project.job.dto.JobDto;
import com.project.job.dto.JobProgressDto;
import com.project.job.dto.TaskByTheTimeCreatingDto;
import com.project.job.dto.TutorByTheTimeCreatingJobDto;
import com.project.job.entity.ApplicationJob;
import com.project.job.entity.Job;
import com.project.job.entity.TaskByTheTimeCreatingJob;
import com.project.job.entity.TutorByTheTimeCreatingJob;
import com.project.job.repository.ApplicationJobRepository;
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

	@Autowired
	private ApplicationJobRepository applicationJobRepository;

	@Override
	public String createJob(JobDto dto) {
		Job job = new Job();
		String id = mapDtoToObject(dto, job, false);
		return id;
	}

	private String mapDtoToObject(JobDto dto, Job job, boolean isUpdated) {

		LocalDateTime createdDate = job.getCreatedAt();

		job = ObjectMapperUtils.map(dto, Job.class);
		job.setJobResult(dto.getJobResult());

		final String currentUser = dto.getCreatedBy();
		if (isUpdated) {
			job.setUpdatedBy(currentUser);
			job.setUpdatedAt(DateConverter.convertDateToLocalDateTime(new Date()));
		} else {
			job.setCreatedBy(currentUser);
			job.setCreatedAt(DateConverter.convertDateToLocalDateTime(new Date()));
		}

		StringBuilder imgs = new StringBuilder();
		dto.getRetainedImgsIdentification().stream().forEach(item -> {
			imgs.append(item + ", ");
		});
		job.setRetainedImgsIdentification(imgs.toString());

		job = jobRepo.save(job);

		TaskByTheTimeCreatingDto taskJobDto = dto.getTaskByTheTimeCreatingDto();
		System.out.println(taskJobDto.toString());
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

		ApplicationJob applicationJob = new ApplicationJob();
		applicationJob.setJob(job);
		applicationJob.setAppicationId(dto.getApplicationId());
		applicationJobRepository.save(applicationJob);

		return job.getId();
	}

	@Override
	@Transactional
	public String updateJob(JobDto dto) {

		Optional<Job> jobOpt = jobRepo.findById(dto.getId());

		if (!jobOpt.isEmpty()) {
			Job job = jobOpt.get();

			final String jobId = job.getId();

			byTheTimeCreatingJobRepo.deleteByJobId(jobId);

			tutorByTheTimeCreatingJobRepo.deleteByJobId(jobId);

			applicationJobRepository.deleteByJobId(jobId);

			System.out.println("ba");

			return jobId.equals(mapDtoToObject(dto, job, true)) ? jobId : StringUtils.EMPTY;
		}

		return StringUtils.EMPTY;
	}

	@Override
	public List<JobDto> findAll() {
		List<Job> entities = jobRepo.findAll();

		if (!CollectionUtils.isEmpty(entities)) {
			return entities.stream().map(item -> {
				JobDto dto = new JobDto();
				dto = mapEnitityToObject(dto, item);
				return dto;
			}).collect(Collectors.toList());
		}

		return new LinkedList<>();
	}

	@SuppressWarnings("unchecked")
	private JobDto mapEnitityToObject(JobDto dto, Job entity) {

		dto = ObjectMapperUtils.map(entity, JobDto.class);

		TaskByTheTimeCreatingJob entityTask = entity.getTaskByTheTimeCreatingJob();
		if (entityTask != null) {
			dto.setTaskByTheTimeCreatingDto(ObjectMapperUtils.map(entityTask, TaskByTheTimeCreatingDto.class));
		}

		TutorByTheTimeCreatingJob entityTutor = entity.getTutorByTheTimeCreatingJob();
		if (entityTutor != null) {
			dto.setTutorByTheTimeCreatingJobDto(ObjectMapperUtils.map(entityTutor, TutorByTheTimeCreatingJobDto.class));
		}

		dto.setJobProgresseDtos(
				new HashSet<>(ObjectMapperUtils.mapAll(entity.getJobProgresses(), JobProgressDto.class)));

		List<String> imgs = new LinkedList<>();

		if (!StringUtils.isEmpty(entity.getRetainedImgsIdentification())) {
			imgs = Arrays.asList(entity.getRetainedImgsIdentification().split(", "));
			// imgs.remove(imgs.size() - 1);
		}
		dto.setRetainedImgsIdentification(imgs);

		dto.setApplicationId(
				entity.getApplicationJob() == null ? StringUtils.EMPTY : entity.getApplicationJob().getAppicationId());
		dto.setJobResult(entity.getJobResult() == null ? JobResult.NONE : entity.getJobResult());

		return dto;
	}

	@Override
	public JobDto findById(String id) {
		Optional<Job> jobOpt = jobRepo.findById(id);
		if (!jobOpt.isEmpty()) {
			Job job = jobOpt.get();
			JobDto dto = new JobDto();
			dto = mapEnitityToObject(dto, job);
			return dto;
		}
		return null;
	}

	@Override
	public JobDto getLastestUpdateJob() {
		Optional<Job> jobOpt = jobRepo.getLastUpdatedJob();
		if (!jobOpt.isEmpty()) {
			Job job = jobOpt.get();
			JobDto dto = new JobDto();
			dto = mapEnitityToObject(dto, job);
			return dto;
		}
		return null;
	}
}
