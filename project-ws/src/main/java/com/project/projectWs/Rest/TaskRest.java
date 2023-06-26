package com.project.projectWs.Rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.common.utils.ResponseHandler;
import com.project.projectWs.Utils.Routes;
import com.project.projectWs.dto.RequestSaveTaskDto;
import com.project.projectWs.dto.RequestUpdateTaskDto;
import com.project.projectWs.facade.TaskFacade;

@RestController
@RequestMapping(value = Routes.TASK)
public class TaskRest {
	
	@Autowired
	private TaskFacade taskFacade;
	
	@PostMapping("/create")
	public ResponseEntity<Object> createTask(@RequestBody final RequestSaveTaskDto request) {
		String id = taskFacade.save(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}
	
	@PutMapping("/update")
	public ResponseEntity<Object> updateTask(@RequestBody final RequestUpdateTaskDto request) {
		String id = taskFacade.update(request);
		return ResponseHandler.getResponse(id, HttpStatus.OK);
	}

}
