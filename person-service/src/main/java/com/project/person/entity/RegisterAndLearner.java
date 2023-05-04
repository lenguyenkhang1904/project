package com.project.person.entity;

import java.util.LinkedList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
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
	
	//MEDIA
	@Column(name = "avatar")
	private String avatar;
	
	@Column(name = "public_imgs")
	private String publicImgs;

	@Column(name = "private_imgs")
	private String privateImgs;
	
	// HIỆN ĐANG LÀ
	@OneToMany(mappedBy = "registerAndLearner", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Schooler> schoolers;
	
	@Column(name = "note")
	private String note;

}
