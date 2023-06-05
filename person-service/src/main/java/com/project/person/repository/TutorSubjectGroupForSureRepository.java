package com.project.person.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.project.person.entity.TutorSubjectGroupForSure;

@Repository
public interface TutorSubjectGroupForSureRepository extends JpaRepository<TutorSubjectGroupForSure, String> {
	
	@Query(value = "DELETE FROM tutor_subject_group_for_sure tsgfs WHERE tsgfs.tutor_id =:tutorId ", nativeQuery = true)
	void deleteByTutorId(Long tutorId);

}
