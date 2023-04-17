package com.project.projectWs.facade.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.ObjectMapperUtils;
import com.project.location.dto.AreaDto;
import com.project.location.service.AreaService;
import com.project.projectWs.dto.RequestFindingArea;
import com.project.projectWs.facade.LocationFacade;

@Service
public class LocationFacadeImpl implements LocationFacade {
	
	@Autowired
	private AreaService areaService;

	@Override
	public List<AreaDto> findAll() {
		return areaService.findAll();
	}

	@Override
	public AreaDto findById(final String id) {
		return areaService.findById(id);
	}

	@Override
	public void deleteById(String id) {
		areaService.deleteById(id);
	}

	@Override
	public List<AreaDto> findByNationAndStateAndProvincialLevelAndDistrictAndCommune(RequestFindingArea request) {
		AreaDto areaDto = new AreaDto();
		areaDto = ObjectMapperUtils.map(request, AreaDto.class);
		return areaService.findByNationAndStateAndProvincialLevelAndDistrictAndCommune(areaDto);
	}


}
