package com.project.projectWs.dto;

import java.io.Serializable;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RequestUpdateTutorSubjectGroupMaybeDto implements Serializable {
	
	private static final long serialVersionUID = 1L;

	private Long id;
	
	private List<String> tutorSubjectGroupMaybeIds;
}
