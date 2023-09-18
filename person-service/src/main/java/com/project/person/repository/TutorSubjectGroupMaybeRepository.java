package com.project.person.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.project.person.entity.TutorSubjectGroupMaybe;

@Repository
public interface TutorSubjectGroupMaybeRepository extends JpaRepository<TutorSubjectGroupMaybe, String> {
	
	@Modifying
	@Query(value = "DELETE FROM tutor_subject_group_maybe tsgm WHERE tsgm.tutor_id =:tutorId ", nativeQuery = true)
	void deleteByTutorId(Long tutorId);
	
	@Query("SELECT tsgm.subjectGroupId FROM TutorSubjectGroupMaybe tsgm WHERE tsgm.tutor.id =:tutorId")
	List<String> getSubjectGroupIdByTutorId(@Param("tutorId") Long tutorId);

}
