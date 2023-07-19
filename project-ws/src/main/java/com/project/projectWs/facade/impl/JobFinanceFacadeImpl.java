package com.project.projectWs.facade.impl;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.project.common.utils.ObjectMapperUtils;
import com.project.finance.dto.JobFinanceDto;
import com.project.finance.service.JobFinanceService;
import com.project.projectWs.dto.RequestSaveJobFinanceDto;
import com.project.projectWs.dto.RequestUpdateJobFinanceDto;
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

}
