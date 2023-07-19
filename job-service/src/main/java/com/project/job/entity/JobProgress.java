package com.project.job.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.project.common.entity.AbstractEntity;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "job_progress")
@Getter
@Setter
public class JobProgress extends AbstractEntity {
	
	@Id
	@GeneratedValue(generator = "uuid")
	@GenericGenerator(name = "uuid", strategy = "uuid2")
	private String id;
	
	private String name;
	
	private String content;
	
	@ManyToOne
	@JoinColumn(name = "job_id")
	@JsonIgnore
	private Job job;
}
