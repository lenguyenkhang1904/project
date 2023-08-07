package com.project.review.service;

import java.util.List;

import com.project.review.dto.TutorReviewDto;

public interface TutorReviewService {

	List<TutorReviewDto> findAll();
	
	String createTutorReview(TutorReviewDto dto);
	
	List<TutorReviewDto> getAllByTutorId(Long tutorId);
	
	TutorReviewDto findById(String id);

	String update(TutorReviewDto tutor);

}
