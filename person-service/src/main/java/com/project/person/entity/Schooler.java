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

import com.project.common.entity.AbstractEntity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "schooler")
public class Schooler extends AbstractEntity { 
	
	@Id
	@GeneratedValue(generator = "uuid")
	@GenericGenerator(name = "uuid", strategy = "uuid2")
	private String id;
	
	@Column(name = "confirm_imgs")
	private String confirmImgs;

	@Column(name = "now_level")
	private String nowLevel;
	
	@Column(name = "note")
	private String note;
	
	@Column(name = "institution_name")
	private String institutionName;
	
	@Column(name = "institution_address_name")
	private String institutionAbbrName;

	@Column(name = "institution_code")
	private String institutionCode;

	@Column(name = "institution_type")
	private String institutionType;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "register_and_learner_id")
	private RegisterAndLearner registerAndLearner;
}
