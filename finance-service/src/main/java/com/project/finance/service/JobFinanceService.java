package com.project.finance.service;

import com.project.finance.dto.JobFinanceDto;

public interface JobFinanceService {

	String createJobFinance(JobFinanceDto dto);

	String updateJobFinance(JobFinanceDto dto);
	
	JobFinanceDto findById(String id);

}
