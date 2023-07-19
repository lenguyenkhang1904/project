package com.project.finance.service.impl;

import java.util.Optional;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.ObjectMapperUtils;
import com.project.finance.dto.JobFinanceDto;
import com.project.finance.entity.JobFinance;
import com.project.finance.repository.JobFinanceRepository;
import com.project.finance.service.JobFinanceService;

@Service
public class JobFinanceServiceImpl implements JobFinanceService {

	@Autowired
	private JobFinanceRepository jobFinanceRepository;

	@Override
	public String createJobFinance(JobFinanceDto dto) {
		JobFinance entity = new JobFinance();
		entity = ObjectMapperUtils.map(dto, JobFinance.class);
		return entity.getId();
	}

	@Override
	public String updateJobFinance(JobFinanceDto dto) {
		Optional<JobFinance> entityOpt = jobFinanceRepository.findById(dto.getId());
		if (!entityOpt.isEmpty()) {
			JobFinance entity = entityOpt.get();
			entity = ObjectMapperUtils.map(dto, JobFinance.class);
			return entity.getId();
		}
		return StringUtils.EMPTY;
	}

	@Override
	public JobFinanceDto findById(String id) {
		Optional<JobFinance> entityOpt = jobFinanceRepository.findById(id);
		if (!entityOpt.isEmpty()) {
			JobFinance entity = entityOpt.get();
			JobFinanceDto dto = new JobFinanceDto();
			dto = ObjectMapperUtils.map(entity, JobFinanceDto.class);
			return dto;
		}
		return null;
	}

}
