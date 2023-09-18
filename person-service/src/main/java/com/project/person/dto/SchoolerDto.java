package com.project.person.dto;

import java.io.Serializable;
import java.time.LocalDateTime;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SchoolerDto implements Serializable  {
	
	private static final long serialVersionUID = 1L;
	
	private String id;

	private String nowLevel;
	
	private String note;

	private String institutionName;

	private String institutionAbbrName;

	private String institutionCode;

	private String institutionType;
	
	private String createdBy;
	
	private LocalDateTime createdAt;

}
