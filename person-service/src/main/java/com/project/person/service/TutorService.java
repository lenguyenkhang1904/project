package com.project.person.service;

import java.util.List;

import com.project.person.dto.TutorDto;
import com.project.person.dto.TutorForFindAllDto;
import com.project.person.entity.Tutor;

public interface TutorService {
	Long saveTutor(final TutorDto dto);

	List<TutorForFindAllDto> findAllTutor();

	TutorForFindAllDto findByTutorCode(final Long tutorCode);

	List<TutorForFindAllDto> findByPhoneNumber(final String phoneNumber);

	List<TutorForFindAllDto> findByEndPhoneNumber(String endPhoneNumber);

	List<TutorForFindAllDto> findByFullNameContain(final String fullName);
	
	List<TutorForFindAllDto> findByEnglishFullName(final String fullname) ;
   
	List<String> findByEngfullnameAndShowFullName(final String fullname);
 
    List<String> findByfullnameAndShowFullName(final String fullname);
    
    TutorDto findById(final Long id);
    
    Long updateTutor(Tutor tutor);
	
	Long update(TutorDto dto);

	List<String> getSubjectGroupsByTutorId(Long tutorId);

	void saveAllSubjectGroup(List<String> subjectGroupOfTutor, Long tutorId);
	
	void deleteSubjectGroupMaybeByTutorId(Long tutorId);

}
