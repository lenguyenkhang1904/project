package com.project.job.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class TutorByTheTimeCreatingJobDto implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String id;
	
	private Long tutorId; 
	
	private String tutorAddress;
	// MEDIA
	private String avatar;
	
	private String publicImgs;
	
	private String privateImgs;
	
	private String tutorNotices;
	
	private String advantageNote;
	
	private String tutorTag;

}
