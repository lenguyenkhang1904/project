package com.project.location.service.impl;

import java.util.LinkedList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.DateConverter;
import com.project.common.utils.ObjectMapperUtils;
import com.project.location.dto.RegisterAndLearnerAddressDto;
import com.project.location.entity.Area;
import com.project.location.entity.RegisterAndLearnerAddress;
import com.project.location.repository.AreaRepository;
import com.project.location.repository.RegisterAndLearnerAddressRepository;
import com.project.location.service.RegisterAndLearnerAddressService;

@Service
public class RegisterAndLearnerAddressServiceImpl implements RegisterAndLearnerAddressService {

	@Autowired
	private RegisterAndLearnerAddressRepository registerAndLearnerAddressRepository;
	
	@Autowired
	private AreaRepository areaRepository;
	
	@Override
	public String save(RegisterAndLearnerAddressDto dto) {
		RegisterAndLearnerAddress registerAndLearnerAddress = new RegisterAndLearnerAddress();
		registerAndLearnerAddress = ObjectMapperUtils.map(dto, RegisterAndLearnerAddress.class);
		return registerAndLearnerAddressRepository.save(registerAndLearnerAddress).getId();
	}

	@Override
	@Transactional
	public void saveAll(List<RegisterAndLearnerAddressDto> dtos, String registerAndLearnerId, String currentUser) {
		List<RegisterAndLearnerAddress> registerAndLearnerAddresses = new LinkedList<>();
		registerAndLearnerAddressRepository.deleteByRegisterAndLearnerId(registerAndLearnerId);
		for(RegisterAndLearnerAddressDto dto : dtos) {
			RegisterAndLearnerAddress registerAndLearnerAddress = new RegisterAndLearnerAddress();
			registerAndLearnerAddress = ObjectMapperUtils.map(dto, RegisterAndLearnerAddress.class);
			registerAndLearnerAddress.setRegisterAndLearnerId(registerAndLearnerId);
			registerAndLearnerAddress.setCreatedAt(DateConverter.convertDateToLocalDateTime(new java.util.Date()));
			registerAndLearnerAddress.setCreatedBy(currentUser);
			Area area = areaRepository.findById(dto.getAreaId()).get();
			registerAndLearnerAddress.setArea(area);
			registerAndLearnerAddresses.add(registerAndLearnerAddress);
		}
		registerAndLearnerAddressRepository.saveAll(registerAndLearnerAddresses);
	}

	@Override
	public List<RegisterAndLearnerAddressDto> findAll() {
		return ObjectMapperUtils.mapAll(registerAndLearnerAddressRepository.findAll(), RegisterAndLearnerAddressDto.class);
	}

}
