package com.project.projectWs.facade;

import java.util.List;

import com.project.location.dto.AreaDto;

public interface LocationFacade {
	public List<AreaDto> findAll();
}
