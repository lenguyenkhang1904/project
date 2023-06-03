package com.project.projectWs.dto;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.LinkedList;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RequestSaveTutor implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private LocalDateTime createdAt;

	private String registeredStatus;

	private String fullName;

	private String englishFullName;

	private String gender;

	private String birthYear;
	
	private LocalDate birthDate;

	private String phones;

	private String emails;

	private String zaloes;

	private String fbs;

	private String idCardNumber;

	private String idCardIssuedOn;

	private String tutorAddress;

	private String tutorAddressAreaId;

	private String xRelCoo;

	private String yRelCoo;
	
	private List<String> areaTutorId = new LinkedList<>();

}
