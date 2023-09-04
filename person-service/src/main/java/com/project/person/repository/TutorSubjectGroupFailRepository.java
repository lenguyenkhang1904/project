package com.project.person.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.project.person.entity.TutorSubjectGroupFAIL;

public interface TutorSubjectGroupFailRepository extends JpaRepository<TutorSubjectGroupFAIL, String>{
	@Modifying
	@Query(value = "DELETE FROM tutor_subject_group_fails tsgf WHERE tsgf.tutor_id =:tutorId ", nativeQuery = true)
	void deleteByTutorId(Long tutorId);

}
