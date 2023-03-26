package com.giasuomt.location;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.project.location.LocationApplication;
import com.project.location.service.AreaService;
@SpringBootTest(classes = LocationApplication.class)
public class testLocation {
	
	@Autowired
	private AreaService areaService;
	
	@Test
	 void findAll() {
		System.out.println(areaService.findAll().size());
	}
	
}
