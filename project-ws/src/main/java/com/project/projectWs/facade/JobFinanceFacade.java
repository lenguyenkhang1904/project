package com.project.projectWs.facade;

import org.springframework.web.multipart.MultipartFile;

import com.project.projectWs.dto.RequestSaveJobFinanceDto;
import com.project.projectWs.dto.RequestUpdateJobFinanceDto;

public interface JobFinanceFacade {
	
	
	String create(RequestSaveJobFinanceDto request);
	
	String update(RequestUpdateJobFinanceDto request);
	
	String createOrUpdateBillImg(String nameFile, MultipartFile multipartFile);
	
	void deleteBillImg(String fileName);

}
