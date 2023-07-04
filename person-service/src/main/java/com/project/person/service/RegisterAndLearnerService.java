package com.project.person.service;

import java.util.List;

import com.project.person.dto.RegisterAndLearnerDto;

public interface RegisterAndLearnerService {
	
	String saveRegisterAndLearner(RegisterAndLearnerDto dto);

	List<RegisterAndLearnerDto> findAllRegisterAndLearner();

	RegisterAndLearnerDto findByRegisterAndLearnerCode(final String registerAndLearnerId);

	List<RegisterAndLearnerDto> findByPhoneNumber(final String phoneNumber);

	List<RegisterAndLearnerDto> findByEndPhoneNumber(String endPhoneNumber);

	List<RegisterAndLearnerDto> findByFullNameContain(final String fullName);
	
	List<RegisterAndLearnerDto> findByEnglishFullNameContaining(String englishFullName);

	List<String> findByEnglishNameAndShowEngLishFullName(String englishFullName);
   
	List<String> findByEngfullnameAndShowFullName(final String fullname);
 
    List<String> findByfullnameAndShowFullName(final String fullname);
    
    RegisterAndLearnerDto findById(final String id);
    
    List<RegisterAndLearnerDto> findByVocativeAndFullName(String vocative, String fullName);

	List<String> findByVocativeAndFullNameAndShowFullName(String vocative, String fullName);

	List<RegisterAndLearnerDto> findByVocativeAndEnglishFullNameContaining(String vocative, String englishName);

	List<String> findByVocativeAndEnglishFullNameAndShowFullName(String vocative, String englishName);

	String updateRegisterAndLearner(RegisterAndLearnerDto registerAndLearnerDto);

	String update(RegisterAndLearnerDto registerAndLearnerDto);

}
