package com.project.person.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "register_and_learner_register_and_learner_tag")
public class RegisterAndLearnerRegisterAndLearnerTag {
	
	@Id
	@GeneratedValue(generator = "uuid")
	@GenericGenerator(name = "uuid", strategy = "uuid2")
	private String id;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name ="register_and_learner_id")
	private RegisterAndLearner registerAndLearner;
	
	@Column(name ="register_and_learner_tag_id")
	private String registerAndLearnerTagId;
}
