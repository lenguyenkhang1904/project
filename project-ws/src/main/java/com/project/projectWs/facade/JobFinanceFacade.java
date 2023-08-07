package com.project.projectWs.facade;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.project.projectWs.dto.RequestSaveJobFinanceDto;
import com.project.projectWs.dto.RequestUpdateJobFinanceDto;
import com.project.projectWs.dto.ResponseJobFinanceDto;

public interface JobFinanceFacade {
	
	
	String create(RequestSaveJobFinanceDto request);
	
	String update(RequestUpdateJobFinanceDto request);
	
	String createOrUpdateBillImg(String nameFile, MultipartFile multipartFile);
	
	void deleteBillImg(String fileName);

	String updateBillImgToAmazon(MultipartFile file, String nameFile);
	
	List<ResponseJobFinanceDto> findAll();
	
	ResponseJobFinanceDto findById(String id);

}
