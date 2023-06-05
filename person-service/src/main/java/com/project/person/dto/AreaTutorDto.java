package com.project.person.dto;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AreaTutorDto implements Serializable  {
	
	private static final long serialVersionUID = 1L;
	
	private Long id;
	
	private LocalDateTime createdAt;
	
	private LocalDateTime updatedAt;
//	
//	@CreatedBy 
//	protected String createdBy;  
//	
//	@LastModifiedBy
//	protected String updatedBy;

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
    
    private String placeOfBirth;
	
	private List<String> relArea;
}
