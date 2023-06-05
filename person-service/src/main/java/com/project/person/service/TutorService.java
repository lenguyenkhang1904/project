package com.project.person.service;

import java.util.List;

import com.project.person.dto.AreaTutorDto;
import com.project.person.dto.TutorDto;

public interface TutorService {
	Long saveTutor(final TutorDto dto);

	List<AreaTutorDto> findAllTutor();

	TutorDto findByTutorCode(final Long tutorCode);

	List<TutorDto> findByPhoneNumber(final String phoneNumber);

	List<TutorDto> findByEndPhoneNumber(final String endPhoneNumber);

	List<TutorDto> findByFullNameContain(final String fullName);
	
	List<TutorDto> findByEnglishFullName(final String fullname) ;
   
	List<String> findByEngfullnameAndShowFullName(final String fullname);
 
    List<String> findByfullnameAndShowFullName(final String fullname);
    
    TutorDto findById(final Long id);
    
    Long updateTutor(final TutorDto dto);
    
    Long updateSubjetGroupMaybe(TutorDto dto);

	Long updateSubjectGroupForSure(TutorDto dto);
	
	Long updateNowLevelAndNowUpdateAt(TutorDto dto);

	Long updateCalendar(TutorDto dto);

}
