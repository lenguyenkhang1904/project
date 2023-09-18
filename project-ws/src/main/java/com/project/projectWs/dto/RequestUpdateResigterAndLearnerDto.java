package com.project.projectWs.dto;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.LinkedList;
import java.util.List;

import com.project.location.dto.RegisterAndLearnerAddressDto;
import com.project.person.dto.RegisterAndLearnerRelationshipDto;
import com.project.person.dto.SchoolerDto;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class RequestUpdateResigterAndLearnerDto implements Serializable  {
	
	private static final long serialVersionUID = 1L;
	
	private String id;

	private String vocative;

	private String note;

	private String registerAndLearnerTag;
	
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

	private List<SchoolerDto> schoolerDtos = new LinkedList<>();

	private List<RegisterAndLearnerRelationshipDto> registerAndLearnerRelationships = new LinkedList<>();
	
	private List<RegisterAndLearnerAddressDto> registerAndLearnerAddressDtos = new LinkedList<>();
}
