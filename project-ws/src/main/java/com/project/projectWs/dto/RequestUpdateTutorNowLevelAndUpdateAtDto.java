package com.project.projectWs.dto;

import java.io.Serializable;
import java.time.LocalDateTime;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RequestUpdateTutorNowLevelAndUpdateAtDto implements Serializable  {
	
	private static final long serialVersionUID = 1L;
	
	private Long id;

	private LocalDateTime nowLevelUpdatedAt;
	
	private String nowLevel;

}
