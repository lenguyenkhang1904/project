package com.project.task.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
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
@Table(name = "registration")
@Getter
@Setter
public class Registration extends AbstractEntity {
	
	@Id
	@GeneratedValue(generator = "uuid")
	@GenericGenerator(name = "uuid", strategy = "uuid2")
	private String id;
	
	@Column(name = "register_and_learner_are")
	private String registerAndLearnerAre;

	@Column(name = "register_and_learner_id")
	private String registerAndLearnerId;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "task_id")
	@JsonIgnore
	private Task task;

}
