package com.project.location.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.project.common.entity.AbstractEntity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "register_and_learner_address")
public class RegisterAndLearnerAddress extends AbstractEntity {
	
	@Id
	@GeneratedValue(generator = "uuid")
	@GenericGenerator(name = "uuid", strategy = "uuid2")
	private String id;
	
	@Column(name ="add_type")
	private String addType;
	
	@Column(name ="add_number")
	private String addNumber;
	
	@Column(name ="add_street")
	private String addStreet;
	
	@Column(name ="add_note")
	private String addNote;
	
	@Column(name ="x_coo")
	private String xCoo;
	
	@Column(name ="y_coo")
	private String yCoo;
	
	@ManyToOne
	@JoinColumn(name = "area_id")
	private Area area;
	
	@Column(name = "register_and_learner_id")
	private String registerAndLearnerId;

}
