package com.project.projectWs.rest;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.project.common.utils.ResponseHandler;
import com.project.projectWs.dto.RequestSaveJob;
import com.project.projectWs.dto.RequestUpdateJobDto;
import com.project.projectWs.dto.RequestUpdateJobResultDto;
import com.project.projectWs.dto.ResponseJobDto;
import com.project.projectWs.facade.JobFacade;
import com.project.projectWs.facade.StorageFacade;
import com.project.projectWs.utils.Routes;

@RestController
@RequestMapping(value = Routes.JOB)
public class JobRest {

	@Autowired
	private JobFacade jobFacade;

	@Autowired
	private StorageFacade storageFacade;

	@PostMapping("/create")
	public ResponseEntity<Object> createJob(@RequestBody final RequestSaveJob request) {
		String id = jobFacade.createJob(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}

	@PutMapping("/update")
	public ResponseEntity<Object> updateJob(@RequestBody final RequestUpdateJobDto request) {
		String id = jobFacade.updateJob(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}

	@GetMapping("/find-all")
	public ResponseEntity<Object> findAll() {
		List<ResponseJobDto> dtos = jobFacade.findAll();
		return ResponseHandler.getResponse(dtos, HttpStatus.OK);
	}

	@GetMapping("/find-by-id/{id}")
	public ResponseEntity<Object> findById(@PathVariable("id") String id) {
		ResponseJobDto dto = jobFacade.findById(id);
		return ResponseHandler.getResponse(dto, HttpStatus.OK);
	}

	@PostMapping("/create-or-update-multiple-retain-identification-imgs/{id}")
	public ResponseEntity<Object> createOrUpdateRetainImgs(@RequestParam("files") MultipartFile[] files,
			@PathVariable("id") String id) throws IOException {
		int count = 0;
		for (MultipartFile file : files) {
			String filename = StringUtils.cleanPath(file.getOriginalFilename());
			if (filename.contains(".jpeg") || filename.contains(".jpg") || filename.contains(".png")) {
				count += 1;
				jobFacade.uploadImageToAmazonImgs(file, id + "RetainedImgsIdentification" + String.valueOf(count));
			} else
				return ResponseHandler.getResponse("You have to upload files which have type of .jpg, .png, .jpeg ",
						HttpStatus.BAD_REQUEST);
		}
		return ResponseHandler.getResponse("Upload files successfully", HttpStatus.CREATED);
	}

	@PostMapping("/create-or-update-multiple-retain-identification-img/{id}")
	public ResponseEntity<Object> createOrUpdateRetainImg(@RequestParam("file") MultipartFile file,
			@PathVariable("id") String id) throws IOException {
		String filename = StringUtils.cleanPath(file.getOriginalFilename());

		if (filename.contains(".jpeg") || filename.contains(".jpg") || filename.contains(".png")) {
			String url = jobFacade.uploadImageToAmazon(file, id);
			return ResponseHandler.getResponse(url, HttpStatus.CREATED);
		}
		return ResponseHandler.getResponse("You have to upload files which have type of .jpg, .png, .jpeg ",
				HttpStatus.BAD_REQUEST);
	}

	@DeleteMapping("/delete-multiple-retain-identification-img/{nameFile}")
	public ResponseEntity<Object> deleteTutorPublicImg(@PathVariable("nameFile") String nameFile) {
		final String retainedImgsIdentificationURL = "https://hn.ss.bfcplatform.vn/retainedimgsidentificationgsomt/";
		if (!storageFacade.checkExistRetain(nameFile))
			return ResponseHandler.getResponse("Don't have any url and id", HttpStatus.BAD_REQUEST);
		jobFacade.deleteByFileNameAndID(retainedImgsIdentificationURL + nameFile);
		return ResponseHandler.getResponse("Delete Successfully", HttpStatus.OK);
	}

	@PostMapping("/update-job-result")
	public ResponseEntity<Object> updateJobResult(@RequestBody final RequestUpdateJobResultDto request) {
		String id = jobFacade.updateJobResult(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}

}
