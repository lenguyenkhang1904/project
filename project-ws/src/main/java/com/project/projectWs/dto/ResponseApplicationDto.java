package com.project.projectWs.dto;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import com.project.common.utils.ApplicationSign;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ResponseApplicationDto implements Serializable  {
	
	private static final long serialVersionUID = 1L;
	
	private String id;
	
	private ResponseTutorBasicInfo tutor;
	
	private Set<ApplicationSign> applicationSigns = new HashSet<>();
}
