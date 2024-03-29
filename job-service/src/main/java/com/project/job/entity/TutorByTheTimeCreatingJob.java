package com.project.job.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "tutor_by_the_time_creating_job")
@Getter
@Setter
public class TutorByTheTimeCreatingJob {
	
	@Id
	@GeneratedValue(generator = "uuid")
	@GenericGenerator(name = "uuid", strategy = "uuid2")
	private String id;
	
	private Long tutorId; 
	
	private String tutorAddress;
	// MEDIA
	private String avatar;
	
	private String publicImgs;
	
	private String privateImgs;
	
	private String tutorNotices;
	
	private String advantageNote;
	
	private String tutorTag;
	
	@OneToOne
	private Job job;
}
