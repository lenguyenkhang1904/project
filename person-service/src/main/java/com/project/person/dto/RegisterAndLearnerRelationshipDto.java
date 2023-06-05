package com.project.person.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RegisterAndLearnerRelationshipDto implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String id;

	private String relationshipType;
	
	private String idPersonBy;//B tồn tại trong DB

}
