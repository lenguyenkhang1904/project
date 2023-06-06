package com.project.person.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import com.project.common.entity.AbstractEntity;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "tutor_invitation")
@Getter
@Setter
@EntityListeners(AuditingEntityListener.class)
public class TutorInvitation extends AbstractEntity {
	
	@Id
	@GeneratedValue(generator = "uuid")
	@GenericGenerator(name = "uuid", strategy = "uuid2")
	private String id;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "register_and_learner_id")
	private RegisterAndLearner registerAndLearner;

	@Column(name = "learner_and_register_phone")
	private String learnerAndReqisterPhone;

	@JoinColumn(name = "tutor_id")
	@ManyToOne(fetch = FetchType.LAZY)
	private Tutor tutor;
	
	@Column(name = "note")
	private String note;
}
