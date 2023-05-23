package com.project.common.dto;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PersonInformationDto {
//	
//	@CreatedBy 
//	protected String createdBy;  
//	
//	@LastModifiedBy
//	protected String updatedBy;

	protected  String registeredStatus;

	protected  String fullName;

	protected  String englishFullName;

	protected  String gender;

	protected  String birthYear;
	
	protected  LocalDate birthDate;

	protected  String phones;

	protected  String emails;

	protected  String zaloes;

	protected  String fbs;

	protected  String idCardNumber;

	protected  String idCardIssuedOn;
	
	protected  String avatar;
	
	protected  List<String> publicImgs;

	protected  List<String> privateImgs;
	
	protected LocalDateTime createdAt;
	
	protected LocalDateTime updatedAt;
}
