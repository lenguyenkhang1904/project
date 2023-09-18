package com.project.review.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.project.common.entity.PersonAbstractInformation;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "tutor_review")
@Getter
@Setter
public class TutorReview extends PersonAbstractInformation  {
	
	@Id
	@GeneratedValue(generator = "uuid")
	@GenericGenerator(name = "uuid", strategy = "uuid2")
	private String id;
	
	private Double starNumber;
	
	private String feedbackContent;
	
	@Column(name = "tutor_id")
	private Long tutorId;
	
	@Column(name = "job_id")
	private String jobId;
	
	private String  publicFeedbackImgs;
	
	private String  privateFeedbackImgs;
}
