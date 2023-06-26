package com.project.location.service.impl;

import java.util.LinkedList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.ObjectMapperUtils;
import com.project.location.dto.AreaDto;
import com.project.location.entity.Area;
import com.project.location.repository.AreaRepository;
import com.project.location.service.AreaService;

@Service
public class AreaServiceImpl implements AreaService {

	@Autowired(required = true)
	private AreaRepository areaRepository;

	@Override
	public List<AreaDto> findAll() {

		List<Area> areas = areaRepository.findAll();

		List<AreaDto> areaDtos = ObjectMapperUtils.mapAll(areas, AreaDto.class);

		return areaDtos;
	}

	@Override
	public AreaDto findById(final String id) {
		Optional<Area> areaOpt = areaRepository.findById(id);
		if (areaOpt.isPresent()) {
			Area area = areaOpt.get();
			AreaDto areaDto = new AreaDto();
			areaDto = ObjectMapperUtils.map(area, AreaDto.class);
			return areaDto;
		}
		return null;
	}

	@Override
	public void deleteById(final String id) {
		areaRepository.deleteById(id);
	}

	@Override
	public List<AreaDto> findByNationAndStateAndProvincialLevelAndDistrictAndCommune(AreaDto areaDto) {
		final String nation = "Việt Nam";
		final String commune = areaDto.getCommune();
		final String district = areaDto.getDistrict();
		final String provincialLevel = areaDto.getProvincialLevel();
//		final String state = areaDto.getState();
		List<AreaDto> areaDtos = new LinkedList<>();
		if (provincialLevel != null && district != null && commune != null) {
			List<Area> areas = areaRepository.findByNationAndProvincialLevelAndDistrictAndCommune(nation,
					provincialLevel, district, commune);
			areaDtos = ObjectMapperUtils.mapAll(areas, AreaDto.class);
			System.out.println(areas);
			return areaDtos;
		} else if (provincialLevel != null && district != null) {
			List<Area> areas = areaRepository.findByNationAndProvincialLevelAndStateAndDistrict(nation, provincialLevel,
					district);
			areaDtos = ObjectMapperUtils.mapAll(areas, AreaDto.class);
			return areaDtos;
		} else if (provincialLevel != null) {
			List<Area> areas = areaRepository.findByNationAndProvincialLevelAndState(nation, provincialLevel);
			areaDtos = ObjectMapperUtils.mapAll(areas, AreaDto.class);
			return areaDtos;
		}
		return null;
	}

}
