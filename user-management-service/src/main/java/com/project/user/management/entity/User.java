package com.project.user.management.entity;

import java.util.LinkedList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.project.common.entity.AbstractEntity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "user_application")
public class User extends AbstractEntity {

	@Id
	@GeneratedValue(generator = "uuid")
	@GenericGenerator(name = "uuid", strategy = "uuid2")
	private String id;

	@Column(name = "username")
	private String username;

	@Column(name = "password")
	private String password;

	@Column(name = "email")
	private String email;

	@Column(name = "phone")
	private String phone;
	
	@Column(name = "status")
	private String status;

	@OneToOne(mappedBy = "user")
	private TutorTypeUser tutorTypeUser;

	@OneToOne(mappedBy = "user")
	private RegisterAndLearnerTypeUser RegisterAndLearnerTypeUsers;
	
	@OneToMany(mappedBy = "user")
	@JsonIgnore
	private List<UserRole> userRoles = new LinkedList<>();
}
