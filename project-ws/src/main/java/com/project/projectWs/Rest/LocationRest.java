package com.project.projectWs.Rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.projectWs.facade.LocationFacade;

import lombok.AllArgsConstructor;

@RestController 
@RequestMapping("/api/area")
public class LocationRest {
	@Autowired
	private LocationFacade locationFacade;
	

	@GetMapping("/findAll")
//	@PreAuthorize("hasAuthority('tutor-role')")
	public String findall() {
		return "hello";
	}

}
