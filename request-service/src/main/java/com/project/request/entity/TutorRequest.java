package com.project.request.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.project.common.entity.AbstractEntity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "tutor_request")
public class TutorRequest extends AbstractEntity {
	
	@Id
	@GeneratedValue(generator = "uuid")
	@GenericGenerator(name = "uuid", strategy = "uuid2")
	private String id;

	@Column(name = "from_url")
	private String fromUrl;
	
	@Column(name = "chosen_tutor_id")
	private Long chosenTutorId;
	
	@Column(name = "phones")
	private String phones;
	
	@Column(name = "username")
	private String username;
	
	@Column(name = "when_to_contact")
	private String whenToContact;
	
	@Column(name = "require_content")
	private String requireContent;
	
	@Column(name = "local")
	private String local;
}
