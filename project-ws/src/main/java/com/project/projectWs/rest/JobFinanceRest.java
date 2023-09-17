package com.project.projectWs.rest;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.project.common.utils.ResponseHandler;
import com.project.projectWs.dto.RequestSaveJobFinanceDto;
import com.project.projectWs.dto.RequestUpdateJobFinanceDto;
import com.project.projectWs.facade.JobFinanceFacade;
import com.project.projectWs.utils.Routes;

import lombok.extern.log4j.Log4j2;

@RestController
@RequestMapping(value = Routes.JOB_FINANCE)
@Log4j2
public class JobFinanceRest {

	@Autowired
	private JobFinanceFacade jobFinanceFacade;

	@PostMapping("/create")
	public ResponseEntity<Object> create(@RequestBody final RequestSaveJobFinanceDto request) throws JsonProcessingException {
		log.info("Request: " + request.toJson());
		String id = jobFinanceFacade.create(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}

	@PutMapping("/update")
	public ResponseEntity<Object> update(@RequestBody final RequestUpdateJobFinanceDto request) {
		String id = jobFinanceFacade.update(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}

	@PostMapping("/create-or-update-bill-img/{id}")
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
	
	@GetMapping("/sync-up")
	public ResponseEntity<Object> syncUpData() {
		
		boolean check = jobFinanceFacade.syncUpData();
		
		return ResponseHandler.getResponse(check, HttpStatus.OK);
	}

//	@DeleteMapping("/delete-bill-img/{nameFile}/")
//	public ResponseEntity<Object> delete(@PathVariable("nameFile") String nameFile) {
//		final String url = "https://hn.ss.bfcplatform.vn/billimagegsomt/";
//		if (!storageFacade.checkExistObjectBillImage(nameFile))
//			return ResponseHandler.getResponse("Don't have any url and id", HttpStatus.BAD_REQUEST);
//		jobFinanceFacade.deleteBillImg(url + nameFile);
//		return ResponseHandler.getResponse("Delete Successfully", HttpStatus.OK);
//	}
//
//	@PutMapping("/update-bill-img/{nameFile}")
//	public ResponseEntity<Object> UpdatePrivateImg(@RequestParam("file") MultipartFile file,
//			@PathVariable("nameFile") String nameFile) throws IOException {
//		String filename = StringUtils.cleanPath(file.getOriginalFilename());
//		if (filename.contains(".jpeg") || filename.contains(".jpg") || filename.contains(".png")) {
//			String awsAvatarURL = jobFinanceFacade.updateBillImgToAmazon(file, nameFile);
//			return ResponseHandler.getResponse(awsAvatarURL, HttpStatus.CREATED);
//		}
//
//		else
//			return ResponseHandler.getResponse("You have to upload files which have type of .jpg, .png, .jpeg ",
//					HttpStatus.BAD_REQUEST);
//	}
//	
}
