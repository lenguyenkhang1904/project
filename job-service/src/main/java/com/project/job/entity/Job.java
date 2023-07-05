package com.project.job.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.project.common.entity.AbstractEntity;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "job")
@Getter
@Setter
public class Job  extends AbstractEntity {
	
	@Id
	private String id;
	
	@Column(name = "task_id")
	private String taskId;
	
	@Column(name = "tutor_id")
	private String tutorId;

}
