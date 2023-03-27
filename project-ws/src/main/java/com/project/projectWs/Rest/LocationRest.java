package com.project.projectWs.Rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.common.utils.ResponseHandler;
import com.project.location.dto.AreaDto;
import com.project.projectWs.Utils.Routes;
import com.project.projectWs.facade.LocationFacade;

import lombok.AllArgsConstructor;

@RestController
@RequestMapping(value = Routes.AREA)
public class LocationRest {
	@Autowired
	private LocationFacade locationFacade;

	@GetMapping("/find-all-location")
	public ResponseEntity<Object> findall() {
		List<AreaDto> areaDtos = locationFacade.findAll();
		return ResponseHandler.getResponse(areaDtos, HttpStatus.OK);
	}

}
