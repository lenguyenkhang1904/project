package com.project.job.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.project.common.entity.AbstractEntity;
import com.project.common.utils.JobResult;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "job")
@Getter
@Setter
public class Job extends AbstractEntity {

	@Id
	private String id;

	@Column(name = "task_id")
	private String taskId;

	@Column(name = "tutor_id")
	private Long tutorId;
	
	@OneToOne(mappedBy = "job")
	private ApplicationJob applicationJob;

	// Thông tin Task và Tutor tại thời điểm giao (để lưu trữ lại)
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "job")
	private TaskByTheTimeCreatingJob taskByTheTimeCreatingJob;

	@OneToOne(fetch = FetchType.LAZY, mappedBy = "job")
	private TutorByTheTimeCreatingJob tutorByTheTimeCreatingJob;

	private String verifiedTutorInfo;

	private String adviceToTutor;
	
	private String retainedImgsIdentification;
	
	@OneToMany(mappedBy = "job", fetch = FetchType.LAZY)
	private Set<JobProgress> jobProgresses = new HashSet<>();
	
	@Enumerated(EnumType.STRING)
	private JobResult jobResult;
	
	private String failReason;
	
	@org.hibernate.annotations.Type(type = "true_false") // xác định cách biểu diễn boolean khi lưu xuống db
	private Boolean findAnotherTutorIfFail;
}
