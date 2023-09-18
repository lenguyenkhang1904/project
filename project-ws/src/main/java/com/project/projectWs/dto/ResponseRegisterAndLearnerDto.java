package com.project.projectWs.dto;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.LinkedList;
import java.util.List;

import com.project.location.dto.RegisterAndLearnerAddressDto;
import com.project.person.dto.RegisterAndLearnerRelationshipDto;
import com.project.person.dto.SchoolerDto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ResponseRegisterAndLearnerDto implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String id;
	
	private String createdBy;

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

	private String avatar;

	private List<String> publicImgs = new LinkedList<>();

	private List<String> privateImgs = new LinkedList<>();

	private LocalDateTime createdAt;

	private String vocative;

	private String note;

	private String registerAndLearnerTag;

	private List<SchoolerDto> schoolerDtos = new LinkedList<>();

	private List<RegisterAndLearnerRelationshipDto> registerAndLearnerRelationships = new LinkedList<>();
	
	private List<RegisterAndLearnerAddressDto> registerAndLearnerAddressDtos = new LinkedList<>();
}
