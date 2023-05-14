package com.project.person.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

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
	@OneToMany(mappedBy = "registerAndLearner", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Schooler> schoolers;

	@OneToMany(mappedBy = "registerAndLearner", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<RegisterAndLearnerRegisterAndLearnerTag> RegisterAndLearnerRegisterAndLearnerTags;

	@Column(name = "note")
	private String note;

	@OneToMany(mappedBy = "registerAndLearner")
	private List<TutorIntivation> tutorInvitations;

	@OneToMany(mappedBy = "registerAndLearner")
	private List<TutorInterest> tutorInterests;
	
	@OneToMany(mappedBy = "registerAndLearnerBy", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<RegisterAndLearnerRelationship> relationshipBy;
	
	@OneToMany(mappedBy = "registerAndLearnerWith", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<RegisterAndLearnerRelationship> relationshipWith;
	

	public void addSchooler(Schooler schooler) {
		schooler.setRegisterAndLearner(this);
		this.schoolers.add(schooler);
	}

	public void removeSchooler(Schooler schooler) {
		this.schoolers.remove(schooler);
	}

	public void removeRelationshipWith(RegisterAndLearnerRelationship relationship) {
		this.relationshipWith.remove(relationship);
	}

	public void addRelationshipWith(RegisterAndLearnerRelationship relationship) {
		relationship.setRegisterAndLearnerWith(this);
		this.relationshipWith.add(relationship);
	}

}
