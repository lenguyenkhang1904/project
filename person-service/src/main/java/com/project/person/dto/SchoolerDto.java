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

	private String confirmImgs;

	private String nowLevel;
	
	private String note;

	private LocalDateTime nowLevelUpdatedAt;

	private String institutionName;

	private String institutionAbbrName;

	private String institutionCode;

	private String institutionType;
	
	protected LocalDateTime createdAt;
	
	protected LocalDateTime updatedAt;

}
