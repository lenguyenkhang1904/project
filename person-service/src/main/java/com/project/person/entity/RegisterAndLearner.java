package com.project.person.entity;

import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedAttributeNode;
import javax.persistence.NamedEntityGraph;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.project.common.entity.PersonAbstractInformation;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "register_and_learner")
@Getter
@Setter
@NamedEntityGraph(name = "registerAndLearner", attributeNodes = { 
		@NamedAttributeNode("schoolers"),
		@NamedAttributeNode("publicImgs"), 
		@NamedAttributeNode("privateImgs"),
		@NamedAttributeNode("relationshipBy") })
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
	private Set<String> publicImgs;

	@Column(name = "private_imgs")
	@ElementCollection
	private Set<String> privateImgs;

	// HIỆN ĐANG LÀ
	@OneToMany(mappedBy = "registerAndLearner")
	private Set<Schooler> schoolers;

	@Column(name = "register_and_learner_tag")
	private String registerAndLearnerTag;

	@Column(name = "note")
	private String note;

	@OneToMany(mappedBy = "registerAndLearner")
	@JsonIgnore
	private List<TutorInvitation> tutorInvitations;

	@OneToMany(mappedBy = "registerAndLearner")
	@JsonIgnore
	private List<TutorInterest> tutorInterests;

	@OneToMany(mappedBy = "registerAndLearnerBy")
	private Set<RegisterAndLearnerRelationship> relationshipBy;

	@OneToMany(mappedBy = "registerAndLearnerWith")
	@JsonIgnore
	private Set<RegisterAndLearnerRelationship> relationshipWith;

}
