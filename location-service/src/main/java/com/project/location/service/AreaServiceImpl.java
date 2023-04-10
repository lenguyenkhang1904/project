package com.project.location.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.ObjectMapperUtils;
import com.project.location.dto.AreaDto;
import com.project.location.entity.Area;
import com.project.location.repository.AreaRepository;

@Service
public class AreaServiceImpl implements AreaService {
	
	@Autowired(required = true)
	private AreaRepository areaRepository;

	@Override
	public List<AreaDto> findAll() {
		
		List<Area> areas = areaRepository.findAll();
		
		List<AreaDto> areaDtos = ObjectMapperUtils.mapAll(areas,AreaDto.class);
		
		return areaDtos;
	}

}
