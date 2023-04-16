package com.project.location.service;

import java.util.List;

import com.project.location.dto.AreaDto;

public interface AreaService {
	List<AreaDto>  findAll();
	
	AreaDto findById(final String id);
	
	void deleteById(final String id);
	
	List<AreaDto> findByNationAndStateAndProvincialLevelAndDistrictAndCommune(final AreaDto areaDto);
}
