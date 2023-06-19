package com.project.projectWs.dto;

import java.io.Serializable;
import java.time.LocalDate;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class ResponseTutorBasicInfo implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private Long id;
	
	private String registeredStatus;

	private String fullName;

	private String englishFullName;

	private String gender;

	private String birthYear;

	private LocalDate birthDate;

	private String phones;

	private String emails;

	private String zaloes;

	private String avatar;

}
