package com.project.request.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class TutorRequestDto implements Serializable  {
	
	private static final long serialVersionUID = 1L;
	
	private String id;

	private String fromUrl;

	private Long chosenTutorId;

	private String phones;

	private String whenToContact;

	private String requireContent;

	private String local;
	
	private String createdBy;
}
