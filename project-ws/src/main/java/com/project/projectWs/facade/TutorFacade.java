package com.project.projectWs.facade;

import java.util.List;

import com.project.person.dto.TutorDto;
import com.project.projectWs.dto.RequestSaveTutor;
import com.project.projectWs.dto.ResponseTutor;

public interface TutorFacade {
	Long saveTutor(final RequestSaveTutor request);
	
	List<ResponseTutor> findAllTutor();

	TutorDto findByTutorCode(final Long tutorCode);

	List<TutorDto> findByPhoneNumber(final String phoneNumber);

	List<TutorDto> findByEndPhoneNumber(final String endPhoneNumber);

	List<TutorDto> findByFullNameContain(final String fullName);
	
	List<TutorDto> findByEnglishFullName(final String fullname) ;
   
	List<String> findByEngfullnameAndShowFullName(final String fullname);
 
    List<String> findByfullnameAndShowFullName(final String fullname);

}
