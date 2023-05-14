package com.project.common.dto;

import java.time.LocalDateTime;

import javax.persistence.Column;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class TagDto {

	protected LocalDateTime createdAt;

	protected LocalDateTime updatedAt;
//	
//	@CreatedBy 
//	protected String createdBy;  
//	
//	@LastModifiedBy
//	protected String updatedBy;
	
	protected String tagType;

	protected String tagGroup;

	protected String tagName;

}
