package com.project.projectWs.facade;

import java.util.List;

import com.project.location.dto.AreaDto;
import com.project.projectWs.dto.RequestFindingArea;

public interface LocationFacade {
	List<AreaDto> findAll();
	
	AreaDto findById(final String id);
	
	void deleteById(final String id);
	
	List<AreaDto> findByNationAndStateAndProvincialLevelAndDistrictAndCommune(final RequestFindingArea request);
	
}
