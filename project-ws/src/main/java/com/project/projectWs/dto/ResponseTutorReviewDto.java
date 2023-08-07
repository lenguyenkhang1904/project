package com.project.projectWs.dto;

import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;

import com.project.job.dto.JobDto;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class ResponseTutorReviewDto implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Long id;

	private Double starNumber;

	private String feedbackContent;
	
	private ResponseTutorBasicInfo tutor;

	private JobDto job;

	private String createdBy;

	private String jobCreatedByCreatingTutorReview;

	private List<String> publicFeedbackImgs = new LinkedList<>();

	private List<String> privateFeedbackImgs = new LinkedList<>();
}
