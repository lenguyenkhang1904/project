package com.project.projectWs.dto;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import com.project.location.dto.AreaDto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ResponseTutor implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private LocalDateTime createdAt;
	
	private LocalDateTime updatedAt;

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

	private AreaDto tutorAddressAreaId;

	private String xRelCoo;

	private String yRelCoo;
	
	private List<AreaDto> areaTutorId;

}
