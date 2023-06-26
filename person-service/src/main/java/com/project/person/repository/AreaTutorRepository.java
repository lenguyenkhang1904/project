package com.project.person.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.project.person.entity.AreaTutor;

@Repository
public interface AreaTutorRepository extends JpaRepository<AreaTutor, String> {
	
	@Modifying
	@Query(value = "DELETE FROM area_tutor art WHERE art.tutor_id =:tutorId", nativeQuery = true)
	void deleteByTutorId(@Param("tutorId") Long tutorId);
}
