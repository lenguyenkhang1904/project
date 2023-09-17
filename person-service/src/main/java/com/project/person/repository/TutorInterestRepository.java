package com.project.person.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.project.person.entity.TutorInterest;

@Repository
public interface TutorInterestRepository extends JpaRepository<TutorInterest, String> {
	
	@Query("SELECT ti FROM TutorInterest ti WHERE ti.tutor.id=:tutorId")
	List<TutorInterest> findAllByTutorId(@Param("tutorId") Long tutorId);

}
