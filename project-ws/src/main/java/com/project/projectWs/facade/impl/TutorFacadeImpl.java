package com.project.projectWs.facade.impl;

import java.util.Collection;
import java.util.LinkedList;
import java.util.List;import java.util.stream.Collector;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.ObjectMapperUtils;
import com.project.location.dto.AreaDto;
import com.project.location.service.AreaService;
import com.project.person.dto.AreaTutorDto;
import com.project.person.dto.TutorDto;
import com.project.person.service.TutorService;
import com.project.projectWs.dto.RequestSaveTutor;
import com.project.projectWs.dto.ResponseTutor;
import com.project.projectWs.facade.TutorFacade;

@Service
public class TutorFacadeImpl implements TutorFacade {
	
	@Autowired
	private TutorService tutorService;
	
	@Autowired
	private AreaService areaService;

	@Override
	public Long saveTutor(RequestSaveTutor request) {
		TutorDto dto = new TutorDto();
		dto = ObjectMapperUtils.map(request, TutorDto.class);
		Long id = tutorService.saveTutor(dto);
		return id;
	}

	@Override
	public List<ResponseTutor> findallTutor() {
		List<AreaTutorDto> dtos = tutorService.findAllTutor();
		List<ResponseTutor> tutors = new LinkedList<>();
		List<AreaDto> areas = areaService.findAll();
		
		dtos.stream().forEach(item -> {
			ResponseTutor responseTutor = new ResponseTutor();
			
			
			responseTutor = ObjectMapperUtils.map(item,ResponseTutor.class);
			
			AreaDto areaDto = areas.stream().filter(area -> area.getId().
					equals(item.getTutorAddressAreaId())).collect(Collectors.toList()).get(0);
			
			responseTutor.setTutorAddressAreaId(areaDto);
			
			responseTutor.setAreaTutorId(areas.stream().filter(area -> item.getRelArea().stream().
					anyMatch(it -> it.equals(area.getId()))).
					collect(Collectors.toList()))  ;			
			tutors.add(responseTutor);
		});		
		return tutors;
	}

}
