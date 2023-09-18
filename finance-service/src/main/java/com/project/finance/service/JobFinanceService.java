package com.project.finance.service;

import java.util.List;

import com.project.finance.dto.JobFinanceDto;
import com.project.finance.entity.JobFinance;

public interface JobFinanceService {

	String createJobFinance(JobFinanceDto dto);

	String updateJobFinance(JobFinanceDto dto);
	
	JobFinanceDto findById(String id);
	
	java.util.List<JobFinanceDto> findAll();

	List<JobFinance> findAllSyncUp();

	void saveAll(List<JobFinance> jobs);

}
