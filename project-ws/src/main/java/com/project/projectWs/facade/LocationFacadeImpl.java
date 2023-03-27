package com.project.projectWs.facade;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.location.dto.AreaDto;
import com.project.location.service.AreaService;

@Service
public class LocationFacadeImpl implements LocationFacade {
	
	@Autowired(required = true)
	private AreaService areaService;

	@Override
	public List<AreaDto> findAll() {
		return areaService.findAll();
	}

}
