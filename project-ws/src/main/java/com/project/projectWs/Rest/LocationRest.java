package com.project.projectWs.Rest;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.common.utils.ResponseHandler;
import com.project.location.dto.AreaDto;
import com.project.projectWs.Utils.Routes;
import com.project.projectWs.dto.RequestFindingArea;
import com.project.projectWs.facade.LocationFacade;

@RestController
@RequestMapping(value = Routes.AREA)
public class LocationRest {
	@Autowired
	private LocationFacade locationFacade;

	@GetMapping("/find-all-location")
	public ResponseEntity<Object> findAll() {
		List<AreaDto> areaDtos = locationFacade.findAll();
		return ResponseHandler.getResponse(areaDtos, HttpStatus.OK);
	}

	@GetMapping("/find-by-id/{id}")
	public ResponseEntity<Object> findById(@PathVariable("id") final String id) {
		AreaDto areaDto = locationFacade.findById(id);
		if (areaDto == null || StringUtils.isEmpty(id))
			return ResponseHandler.getResponse("Do not have this area in DB", HttpStatus.BAD_REQUEST);
		return ResponseHandler.getResponse(areaDto, HttpStatus.OK);
	}

	@DeleteMapping("/delete/{id}")
	public ResponseEntity<Object> deleteById(@PathVariable("id") final String id) {

		if (StringUtils.isEmpty(id))
			return ResponseHandler.getResponse("Do not have id", HttpStatus.BAD_REQUEST);
		locationFacade.deleteById(id);
		return ResponseHandler.getResponse("delete sucessfully", HttpStatus.OK);
	}

	@PostMapping("/find-by-nation-state-provincialLevel-district-commune")
	public ResponseEntity<Object> findByNationAndStateAndProvincialLevelAndDistrictAndCommune(@RequestBody final RequestFindingArea request) {
		List<AreaDto> areaDtos = locationFacade.findByNationAndStateAndProvincialLevelAndDistrictAndCommune(request);
		return ResponseHandler.getResponse(areaDtos, HttpStatus.OK);
	}

}
