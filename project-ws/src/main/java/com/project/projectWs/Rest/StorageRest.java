package com.project.projectWs.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.common.utils.ResponseHandler;
import com.project.projectWs.facade.StorageFacade;
import com.project.projectWs.utils.Routes;

@RestController
@RequestMapping(value = Routes.STORAGE)
@PreAuthorize("hasAuthority('ADMINISTRATOR')")
public class StorageRest {
	
	@Autowired
	private StorageFacade storageFacade;
	
	
	@GetMapping("/find-all-tutor-avatars")
	public ResponseEntity<Object> findAll() {
		List<String> fileEntities = storageFacade.findAllTutor();
		if (fileEntities.isEmpty())
			return ResponseHandler.getResponse("There is no data", HttpStatus.BAD_REQUEST);

		return ResponseHandler.getResponse(fileEntities, HttpStatus.OK);
	}
	
	@GetMapping("/find-all-tutor-public-imgs")
	public ResponseEntity<Object> findAllTutorPublicImgs() {

		List<String> fileEntities = storageFacade.findAllPublicImgsTutor();

		if (fileEntities.isEmpty())
			return ResponseHandler.getResponse("There is no data", HttpStatus.BAD_REQUEST);

		return ResponseHandler.getResponse(fileEntities, HttpStatus.OK);
	}
	
	@GetMapping("/find-all-tutor-private-imgs")
	public ResponseEntity<Object> findAllTutorPrivateImgs() {

		List<String> fileEntities = storageFacade.findAllPrivateImgsTutor();

		if (fileEntities.isEmpty())
			return ResponseHandler.getResponse("There is no data", HttpStatus.BAD_REQUEST);

		return ResponseHandler.getResponse(fileEntities, HttpStatus.OK);
	}
}
