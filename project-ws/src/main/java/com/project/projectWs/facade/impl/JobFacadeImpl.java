package com.project.projectWs.facade.impl;

import java.util.LinkedList;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.project.common.utils.JobResult;
import com.project.common.utils.ObjectMapperUtils;
import com.project.education.dto.SubjectGroupDto;
import com.project.finance.dto.JobFinanceDto;
import com.project.finance.service.JobFinanceService;
import com.project.job.dto.JobDto;
import com.project.job.dto.TaskByTheTimeCreatingDto;
import com.project.job.dto.TutorByTheTimeCreatingJobDto;
import com.project.job.service.JobService;
import com.project.person.dto.TutorDto;
import com.project.person.service.TutorService;
import com.project.person.utils.RemoveDuplicateElement;
import com.project.projectWs.dto.RequestSaveJob;
import com.project.projectWs.dto.RequestUpdateJobDto;
import com.project.projectWs.dto.RequestUpdateJobResultDto;
import com.project.projectWs.dto.ResponseJobDto;
import com.project.projectWs.dto.ResponseTaskDto;
import com.project.projectWs.dto.ResponseTutor;
import com.project.projectWs.facade.JobFacade;
import com.project.projectWs.facade.TaskFacade;
import com.project.projectWs.facade.TutorFacade;
import com.project.projectWs.facade.UserFacade;
import com.project.projectWs.utils.ExperienceForTutor;
import com.project.storage.service.RetainedImgsIdentificationAwsService;
import com.project.task.dto.ApplicationDto;
import com.project.task.dto.TaskDto;
import com.project.task.service.ApplicationService;
import com.project.task.service.TaskService;

@Service
public class JobFacadeImpl implements JobFacade {

	@Autowired
	private TutorService tutorService;

	@Autowired
	private TaskService taskService;

	@Autowired
	private JobService jobService;

	@Autowired
	private UserFacade userFacade;

	@Autowired
	private ApplicationService applicationService;

	@Autowired
	private JobFinanceService jobFinanceService;

	@Autowired
	private RetainedImgsIdentificationAwsService identificationAwsService;

	@Autowired
	private ExperienceForTutor experienceForTutor;

	@Autowired
	private TaskFacade taskFacade;

	@Autowired
	private TutorFacade tutorFacade;

	@Override
	public String createJob(RequestSaveJob request) {
		String applicationId = request.getApplicationId();
		if (!StringUtils.isEmpty(applicationId)) {
			JobDto jobDto = new JobDto();
			jobDto = mapRequestToDto(request, applicationId, jobDto, null);
			jobDto.setCreatedBy(userFacade.getCurrentUser());
			jobDto.setId(applicationId.concat("-job"));
			String idJob = jobService.createJob(jobDto);

			return idJob;
		}

		return StringUtils.EMPTY;
	}

	@Override
	public String updateJob(RequestUpdateJobDto request) {
		String applicationId = request.getApplicationId();
		if (!StringUtils.isEmpty(applicationId)) {
			JobDto jobDto = new JobDto();
			jobDto = mapRequestToDto(null, applicationId, jobDto, request);
			jobDto.setCreatedBy(userFacade.getCurrentUser());
			String idJob = jobService.updateJob(jobDto);

			return idJob;
		}

		return StringUtils.EMPTY;
	}

	private JobDto mapRequestToDto(RequestSaveJob request, String applicationId, JobDto jobDto,
			RequestUpdateJobDto requestUpdate) {
		jobDto = ObjectMapperUtils.map(request == null ? requestUpdate : request, JobDto.class);
		Long tutorId = Long.parseLong(applicationId.substring(
				(request == null ? requestUpdate.getApplicationId() : request.getApplicationId()).indexOf("-") + 1,
				applicationId.lastIndexOf("-")));
		TutorDto tutorDto = tutorService.findById(tutorId);
		if (tutorId != null && tutorDto != null) {
			TutorByTheTimeCreatingJobDto dto = new TutorByTheTimeCreatingJobDto();
			dto = ObjectMapperUtils.map(tutorDto, TutorByTheTimeCreatingJobDto.class);
			dto.setTutorId(tutorDto.getId());
			jobDto.setTutorId(tutorId);
			jobDto.setTutorByTheTimeCreatingJobDto(dto);
		}

		String taskId = applicationId.substring(0, applicationId.indexOf("-"));
		TaskDto taskDto = taskService.findByTaskId(taskId);

		if (!StringUtils.isEmpty(taskId) && taskDto != null) {
			TaskByTheTimeCreatingDto dto = new TaskByTheTimeCreatingDto();
			dto = ObjectMapperUtils.map(taskDto, TaskByTheTimeCreatingDto.class);
			dto.setTaskId(taskId);
			jobDto.setTaskId(taskId);
			jobDto.setTaskByTheTimeCreatingDto(dto);
		}

		return jobDto;
	}

	@Override
	public List<ResponseJobDto> findAll() {
		List<ResponseJobDto> responses = new LinkedList<>();
		List<JobDto> jobDtos = jobService.findAll();

		List<ApplicationDto> applicationDtos = applicationService.findAllApplication();

		List<JobFinanceDto> jobFinances = jobFinanceService.findAll();

		if (!jobDtos.isEmpty()) {
			responses = jobDtos.stream().map(item -> {
				ResponseJobDto response = new ResponseJobDto();
				response = mapDtoToResponse(item, response, applicationDtos, jobFinances);

				return response;
			}).collect(Collectors.toList());
		}

		return responses;
	}

	private ResponseJobDto mapDtoToResponse(JobDto dto, ResponseJobDto response, List<ApplicationDto> applicationDtos,
			List<JobFinanceDto> jobFinances) {

		response = ObjectMapperUtils.map(dto, ResponseJobDto.class);

		Optional<ApplicationDto> applicationOpt = applicationDtos.stream()
				.filter(item -> item.getId().equals(dto.getApplicationId())).findFirst();

		if (!applicationOpt.isEmpty()) {
			ApplicationDto appDto = applicationOpt.get();
			response.setApplication(appDto);
		}

		Set<JobFinanceDto> jobFinanceDtoOpt = jobFinances.stream().filter(item -> item.getJobId().equals(dto.getId()))
				.collect(Collectors.toSet());

		if (!jobFinanceDtoOpt.isEmpty()) {
			response.setJobFinanceDtos(jobFinanceDtoOpt);
		}

		return response;
	}

	@Override
	public ResponseJobDto findById(String id) {
		JobDto dto = jobService.findById(id);

		List<ApplicationDto> applicationDtos = applicationService.findAllApplication();

		List<JobFinanceDto> jobFinances = jobFinanceService.findAll();
		if (dto != null) {
			ResponseJobDto response = new ResponseJobDto();
			response = mapDtoToResponse(dto, response, applicationDtos, jobFinances);
			return response;
		}
		return null;
	}

	@Override
	public String uploadImageToAmazonImgs(MultipartFile file, String fileName) {
		String url = identificationAwsService.uploadImageToAmazon(file, fileName);
		JobDto dto = jobService.findById(
				fileName.substring(fileName.lastIndexOf("/") + 1, fileName.lastIndexOf("RetainedImgsIdentification")));
		List<String> urlImgs = dto.getRetainedImgsIdentification();
		urlImgs.add(url);
		List<String> converter = new LinkedList<>(urlImgs);
		converter = RemoveDuplicateElement.removeDuplicateElemet(converter);
		dto.setRetainedImgsIdentification(urlImgs);
		String jobUpdatedId = jobService.updateJob(dto);
		return jobUpdatedId != null ? "Insert RetainedImgsIdentifications successfully" : "";
	}

	@Override
	public String uploadImageToAmazon(MultipartFile file, String id) {
		List<String> listOject = identificationAwsService.findAll();
		String awsAvatarURL = "";
		if (listOject.isEmpty()) {
			awsAvatarURL = uploadImageToAmazonImgs(file, id + "RetainedImgsIdentification" + String.valueOf(1));
			return awsAvatarURL;
		} else {
			String lastURL = identificationAwsService.findAllByNameContainer(id + "RetainedImgsIdentification",
					listOject);
			if (lastURL == null) {
				awsAvatarURL = uploadImageToAmazonImgs(file, id + "RetainedImgsIdentification" + String.valueOf(1));
				return awsAvatarURL;
			} else {
				int count = Integer.parseInt(lastURL.substring(lastURL.lastIndexOf("c") + 1));
				awsAvatarURL = uploadImageToAmazonImgs(file,
						id + "RetainedImgsIdentification" + String.valueOf(count + 1));
				return awsAvatarURL;
			}
		}
	}

	@Override
	public void deleteByFileNameAndID(String fileName) {
		identificationAwsService.deleteByFileNameAndID(fileName);
		JobDto dto = jobService.findById(
				fileName.substring(fileName.lastIndexOf("/") + 1, fileName.lastIndexOf("RetainedImgsIdentification")));

		List<String> urlImgs = dto.getRetainedImgsIdentification();
		urlImgs.remove(fileName);
		dto.setRetainedImgsIdentification(urlImgs);
		jobService.updateJob(dto);
	}

	@Override
	public String updateJobResult(RequestUpdateJobResultDto request) {
		JobDto jobDto = jobService.getLastestUpdateJob();
		boolean check = true;

		if (jobDto != null) {
			if (jobDto.getJobResult().equals(JobResult.SUCCESS) && jobDto.getId().equals(request.getId())
					&& request.getJobResult().equals(JobResult.SUCCESS)) {
				check = false;// lay duoc enity moi cap nhat
			}
		}

		if (check == true) {
			JobDto job = jobService.findById(request.getId());
			job.setJobResult(request.getJobResult());
			job.setFailReason(request.getFailReason());
			job.setFindAnotherTutorIfFail(request.getFindAnotherTutorIfFail());
			jobDto.setCreatedBy(userFacade.getCurrentUser());
			String jobId = jobService.updateJob(jobDto);

			Long tutorId = Long.parseLong(
					request.getId().substring(request.getId().indexOf("-") + 1, request.getId().lastIndexOf("-a")));

			String taskId = request.getId().substring(0, request.getId().indexOf("-"));

			ResponseTutor tutorRe = tutorFacade.findByTutorCode(tutorId);
			if (tutorRe != null) {
				tutorRe = experienceForTutor.updateExpForTutor(tutorRe);
			}

			ResponseTaskDto taskRe = taskFacade.findByTaskId(taskId);
			Integer successNo = tutorRe.getSuccessJobsNumbers();
			if (successNo == null) {
				successNo = 0;
			}
			Set<SubjectGroupDto> subjectGroupTasks = taskRe.getSubjectGroups();
			Set<SubjectGroupDto> subjectGroupForSureTutors = tutorRe.getSubjectGroupForsures().stream()
					.collect(Collectors.toSet());
			successNo += 1;
			if (request.getJobResult().equals(JobResult.SUCCESS)) {
				if (subjectGroupForSureTutors.isEmpty() && !subjectGroupTasks.isEmpty()) {
					subjectGroupForSureTutors.addAll(subjectGroupTasks);
					tutorRe.setSubjectGroupForsures(subjectGroupForSureTutors.stream().collect(Collectors.toList()));
					tutorRe.setSuccessJobsNumbers(successNo);
					TutorDto tutorDto = convertResponseToJobDto(tutorRe);
					tutorService.update(tutorDto);
				} else if (!subjectGroupForSureTutors.isEmpty() && !subjectGroupTasks.isEmpty()) {
					subjectGroupTasks.stream().filter(subjectGroupTask -> subjectGroupForSureTutors.stream().anyMatch(
							subjectGroupForSureD -> !subjectGroupForSureD.getId().equals(subjectGroupTask.getId())))
							.forEach(subjectGroupTask -> {
								subjectGroupForSureTutors.add(subjectGroupTask);
							});
					tutorRe.setSubjectGroupForsures(subjectGroupForSureTutors.stream().collect(Collectors.toList()));
					tutorRe.setSuccessJobsNumbers(successNo);
					TutorDto tutorDto = convertResponseToJobDto(tutorRe);
					tutorService.update(tutorDto);
				}
			} else if (request.getJobResult().equals(JobResult.FAIL_CAUSE_TUTOR)
					|| request.getJobResult().equals(JobResult.FAIL_CAUSE_LEARNER)) {
				Set<SubjectGroupDto> subjectGroupForFails = tutorRe.getSubjectGroupfails().stream()
						.collect(Collectors.toSet());
				successNo -= 1;
				if (subjectGroupForFails.isEmpty() && !subjectGroupTasks.isEmpty()) {
					subjectGroupForFails.addAll(subjectGroupTasks);
					tutorRe.setSubjectGroupfails(subjectGroupForFails.stream().collect(Collectors.toList()));
					// iTutorRepository.save(tutor);
				} else if (!subjectGroupForFails.isEmpty() && !subjectGroupTasks.isEmpty()) {
					subjectGroupTasks.stream().filter(subjectGroupTask -> subjectGroupForFails.stream().anyMatch(
							subjectGroupForFail -> !subjectGroupForFail.getId().equals(subjectGroupTask.getId())))
							.forEach(subjectGroupTask -> {
								subjectGroupForFails.add(subjectGroupTask);
							});
					tutorRe.setSubjectGroupfails(subjectGroupForFails.stream().collect(Collectors.toList()));
					tutorRe.setSuccessJobsNumbers(successNo);
					TutorDto tutorDto = convertResponseToJobDto(tutorRe);
					tutorService.update(tutorDto);
				}
			}
			return jobId;
		}

		return StringUtils.EMPTY;
	}

	private TutorDto convertResponseToJobDto(ResponseTutor response) {

		TutorDto dto = new TutorDto();
		dto = ObjectMapperUtils.map(response, TutorDto.class);
		dto.setTutorAddressAreaId(response.getTutorAddressAreaId().getId());

		dto.setAreaTutorIds(response.getAreaTutorId().stream().map(item -> {
			return item.getId();
		}).collect(Collectors.toList()));

		dto.setTutorSubjectGroupForSureIds(response.getSubjectGroupForsures().stream().map(item -> {
			return item.getId();
		}).collect(Collectors.toList()));

		dto.setTutorSubjectGroupMaybeIds(response.getSubjectGroupMaybes().stream().map(item -> {
			return item.getId();
		}).collect(Collectors.toList()));

		return dto;

	}

}
