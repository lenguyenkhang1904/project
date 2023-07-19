package com.project.job.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class TutorByTheTimeCreatingJobDto implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Long id;

	private Long tutorId;

	private String tempAddNo;

	private String tempAddSt;

	private String tempAddNote;

	private String perAddNo;

	private String perAddSt;

	private String perAddNote;

	private String xRelCoo;

	private String yRelCoo;
	// MEDIA
	private String avatar;

	private String publicImgs;

	private String privateImgs;

	private String infoImgs;

	private String tutorNotices;

	private String advantageNote;

	private String tutorTag;

}
