package com.project.projectWs.facade;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.location.entity.Area;
import com.project.location.service.AreaService;

@Service
public class LocationFacadeImpl implements LocationFacade {
	
	@Autowired(required = true)
	private AreaService areaService;

	@Override
	public List<Area> findAll() {
		// TODO Auto-generated method stub
		return areaService.findAll();
	}

}
