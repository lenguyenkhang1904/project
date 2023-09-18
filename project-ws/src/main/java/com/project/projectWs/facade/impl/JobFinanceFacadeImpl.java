package com.project.projectWs.facade.impl;

import java.util.LinkedList;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.web.multipart.MultipartFile;

import com.google.common.collect.Sets;
import com.project.common.utils.ObjectMapperUtils;
import com.project.finance.dto.JobFinanceDto;
import com.project.finance.entity.JobFinance;
import com.project.finance.service.JobFinanceService;
import com.project.job.dto.JobDto;
import com.project.job.service.JobService;
import com.project.projectWs.dto.RequestSaveJobFinanceDto;
import com.project.projectWs.dto.RequestUpdateJobFinanceDto;
import com.project.projectWs.dto.ResponseJobFinanceDto;
import com.project.projectWs.facade.JobFinanceFacade;
import com.project.projectWs.facade.UserFacade;
import com.project.storage.service.BillImageAwsService;

@Service
public class JobFinanceFacadeImpl implements JobFinanceFacade {

	@Autowired
	private JobFinanceService jobFinaService;

	@Autowired
	private UserFacade userFacade;

	@Autowired
	private BillImageAwsService billImageAwsService;

	@Autowired
	private JobService jobService;

	@Override
	public String create(RequestSaveJobFinanceDto request) {
		JobFinanceDto dto = ObjectMapperUtils.map(request, JobFinanceDto.class);
		dto.setCreatedBy(userFacade.getCurrentUser());
		return jobFinaService.createJobFinance(dto);
	}

	@Override
	public String update(RequestUpdateJobFinanceDto request) {
		JobFinanceDto dto = ObjectMapperUtils.map(request, JobFinanceDto.class);
		dto.setCreatedBy(userFacade.getCurrentUser());
		return jobFinaService.updateJobFinance(dto);
	}

	@Override
	public String createOrUpdateBillImg(String nameFile, MultipartFile multipartFile) {
		JobFinanceDto dto = jobFinaService.findById(nameFile);
		if (dto != null) {
			String url = billImageAwsService.uploadImageToAmazon(multipartFile, nameFile);
			if (url != null) {
				dto.setCreatedBy(userFacade.getCurrentUser());
				dto.setBillImg(url);
				return jobFinaService.updateJobFinance(dto);
			}
		}

		return StringUtils.EMPTY;
	}

	@Override
	public void deleteBillImg(String fileName) {
		JobFinanceDto dto = jobFinaService.findById(fileName.substring(fileName.lastIndexOf('/') + 1));
		if (dto != null) {
			billImageAwsService.deleteByFileNameAndID(fileName);
			dto.setCreatedBy(userFacade.getCurrentUser());
			dto.setBillImg(null);
		}
	}

	@Override
	public String updateBillImgToAmazon(MultipartFile file, String nameFile) {
		return billImageAwsService.uploadImageToAmazon(file, nameFile);
	}

	@Override
	public List<ResponseJobFinanceDto> findAll() {

		List<JobDto> jobs = jobService.findAll();

		List<JobFinanceDto> entities = jobFinaService.findAll();

		if (!CollectionUtils.isEmpty(entities)) {

			return entities.stream().map(jobFi -> {
				ResponseJobFinanceDto respone = new ResponseJobFinanceDto();
				respone = ObjectMapperUtils.map(jobFi, ResponseJobFinanceDto.class);
				Optional<JobDto> jobOpt = jobs.stream().filter(it -> it.getId().equals(jobFi.getJobId())).findFirst();
				if (!jobOpt.isEmpty()) {
					respone.setJob(jobOpt.get());
				}
				return respone;
			}).collect(Collectors.toList());
		}
		return new LinkedList<>();
	}

	@Override
	public ResponseJobFinanceDto findById(String id) {

		List<JobDto> jobs = jobService.findAll();

		JobFinanceDto entity = jobFinaService.findById(id);
		if (entity != null) {
			ResponseJobFinanceDto response = new ResponseJobFinanceDto();
			response = ObjectMapperUtils.map(entity, ResponseJobFinanceDto.class);
			Optional<JobDto> jobOpt = jobs.stream().filter(it -> it.getId().equals(entity.getJobId())).findFirst();
			if (!jobOpt.isEmpty()) {
				response.setJob(jobOpt.get());
			}
			return response;
		}
		return null;
	}

	@Override
	public boolean syncUpData() {
		Set<String> urlRetainedImgsIdentificationOfJob = Sets.newHashSet(billImageAwsService.findAll());
		List<JobFinance> jobs = jobFinaService.findAllSyncUp();
		for (JobFinance job : jobs) {
			List<String> urls = urlRetainedImgsIdentificationOfJob.stream()
					.filter(item -> item.contains(String.valueOf(job.getId()))).collect(Collectors.toList());

			if (!CollectionUtils.isEmpty(urls)) {
				job.setBillImg(urls.get(0));
			}

		}

		jobFinaService.saveAll(jobs);

		return true;
	}

}
