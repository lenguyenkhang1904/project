package com.project.person.entity;

import java.util.LinkedList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.project.common.entity.PersonAbstractInformation;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "register_and_learner")
@Getter
@Setter
public class RegisterAndLearner extends PersonAbstractInformation {

	@Id
	@GeneratedValue(generator = "uuid")
	@GenericGenerator(name = "uuid", strategy = "uuid2")
	private String id;

	@Column(name = "vocative")
	private String vocative;

	// MEDIA
	@Column(name = "avatar")
	private String avatar;

	@Column(name = "public_imgs")
	@ElementCollection
	private List<String> publicImgs;

	@Column(name = "private_imgs")
	@ElementCollection
	private List<String> privateImgs;

	// HIỆN ĐANG LÀ
	@OneToMany(mappedBy = "registerAndLearner")
	private List<Schooler> schoolers;

	@Column(name = "register_and_learner_tag")
	private String registerAndLearnerTag;

	@Column(name = "note")
	private String note;

	@OneToMany(mappedBy = "registerAndLearner")
	private List<TutorInvitation> tutorInvitations;

	@OneToMany(mappedBy = "registerAndLearner")
	private List<TutorInterest> tutorInterests;

	@OneToMany(mappedBy = "registerAndLearnerBy") 
	private List<RegisterAndLearnerRelationship> relationshipBy;

	@OneToMany(mappedBy = "registerAndLearnerWith")
	@JsonIgnore
	private List<RegisterAndLearnerRelationship> relationshipWith;

}
