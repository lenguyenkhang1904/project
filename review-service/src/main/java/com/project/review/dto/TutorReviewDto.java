package com.project.review.dto;

import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class TutorReviewDto implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String id;

	private Double starNumber;

	private String feedbackContent;

	private Long tutorId;

	private String jobId;

	private String createdBy;

	private String jobCreatedByCreatingTutorReview;

	private List<String> publicFeedbackImgs = new LinkedList<>();

	private List<String> privateFeedbackImgs = new LinkedList<>();
}
