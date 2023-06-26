package com.project.task.dto;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import com.project.common.utils.ApplicationSign;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ApplicationDto implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String id;
	
	private String taskId;
	
	private Long tutorId;
	
	private Set<ApplicationSign> applicationSigns = new HashSet<>();
	
	private String createdBy;

}
