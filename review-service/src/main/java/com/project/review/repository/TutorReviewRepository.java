package com.project.review.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.project.review.entity.TutorReview;

@Repository
public interface TutorReviewRepository extends JpaRepository<TutorReview, String> {
	
	@Query("SELECT tr.starNumber FROM TutorReview tr WHERE tr.tutorId=:id")
	List<Double> findAllByIdTutor(@Param("id") Long tutorId);

}
