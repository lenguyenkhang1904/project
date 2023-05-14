package com.project.person.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.project.person.entity.TutorSubjectGroupMaybe;

@Repository
public interface TutorSubjectGroupMaybeRepository extends JpaRepository<TutorSubjectGroupMaybe, String> {
	
	@Query(value = "DELETE FROM tutor_subject_group_maybe tsgm WHERE tsgm.tutor_id =:tutorId ", nativeQuery = true)
	void deleteByTutorId(Long tutorId);

}
