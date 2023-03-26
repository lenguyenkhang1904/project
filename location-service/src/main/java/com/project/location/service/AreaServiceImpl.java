package com.project.location.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.location.entity.Area;
import com.project.location.repository.AreaRepository;

@Service
public class AreaServiceImpl implements AreaService {
	
	@Autowired
	private AreaRepository areaRepository;

	@Override
	public List<Area> findAll() {
		
		return areaRepository.findAll();
	}

}
