package com.project.location.service;

import java.util.List;

import com.project.location.dto.RegisterAndLearnerAddressDto;

public interface RegisterAndLearnerAddressService {
	
	String save(RegisterAndLearnerAddressDto dto);
	
	void saveAll(List<RegisterAndLearnerAddressDto> dtos, String registerAndLearnerId, String currentUser);
	
	List<RegisterAndLearnerAddressDto> findAll();

}
