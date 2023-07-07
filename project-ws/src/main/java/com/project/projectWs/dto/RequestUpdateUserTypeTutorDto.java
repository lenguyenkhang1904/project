package com.project.projectWs.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RequestUpdateUserTypeTutorDto implements Serializable {

	private static final long serialVersionUID = 1L;

	private String id;

	private Long tutorId;
}
