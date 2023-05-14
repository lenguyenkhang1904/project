package com.project.tags.dto;

import java.io.Serializable;

import com.project.common.dto.TagDto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RegisterAndLearnerTagDto extends TagDto implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String id;

}
