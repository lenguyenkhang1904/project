package com.project.projectWs.rest;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.project.common.utils.ResponseHandler;
import com.project.projectWs.dto.RequestSaveJobFinanceDto;
import com.project.projectWs.dto.RequestUpdateJobFinanceDto;
import com.project.projectWs.facade.JobFinanceFacade;
import com.project.projectWs.facade.StorageFacade;
import com.project.projectWs.utils.Routes;

@RestController
@RequestMapping(value = Routes.JOB_FINANCE)
public class JobFinanceRest {

	@Autowired
	private JobFinanceFacade jobFinanceFacade;
	
	@Autowired
	private StorageFacade storageFacade;

	@PostMapping("/create")
	public ResponseEntity<Object> create(@RequestBody final RequestSaveJobFinanceDto request) {
		String id = jobFinanceFacade.create(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}

	@PutMapping("/update")
	public ResponseEntity<Object> update(@RequestBody final RequestUpdateJobFinanceDto request) {
		String id = jobFinanceFacade.update(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}

	@PostMapping("/createOrUpdateBillImg/{id}")
	public ResponseEntity<Object> uploadOrUpdate(@RequestParam("file") MultipartFile file,
			@PathVariable("id") String id) throws IOException {
		String filename = org.springframework.util.StringUtils.cleanPath(file.getOriginalFilename());
		if (filename.contains(".jpeg") || filename.contains(".jpg") || filename.contains(".png")) {
			String billImagerURL = jobFinanceFacade.createOrUpdateBillImg(id, file);
			return ResponseHandler.getResponse(billImagerURL, HttpStatus.CREATED);
		} else
			return ResponseHandler.getResponse("You have to upload files which have type of .jpg, .png, .jpeg ",
					HttpStatus.BAD_REQUEST);
	}
	
	@DeleteMapping("/deleteBillImg/{nameFile}/")
	public ResponseEntity<Object> delete(@PathVariable("nameFile") String nameFile) {
		final String url = "https://hn.ss.bfcplatform.vn/billimagegsomt/";
		if (!storageFacade.checkExistObjectBillImage(nameFile))
			return ResponseHandler.getResponse("Don't have any url and id", HttpStatus.BAD_REQUEST);
		jobFinanceFacade.deleteBillImg(url + nameFile);
		return ResponseHandler.getResponse("Delete Successfully", HttpStatus.OK);
	}
}
