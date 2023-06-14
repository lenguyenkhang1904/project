package com.project.projectWs.dto;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import com.project.common.utils.Calendar;
import com.project.education.dto.SubjectGroupDto;
import com.project.location.dto.AreaDto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ResponseTutor implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private Long id;
	
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
	
	private String avatar;
	
	private List<AreaDto> areaTutorId;
	
	private String createdBy;
	
	private String updatedBy;

	private List<String> publicImgs;

	private List<String> privateImgs;
	
	private List<SubjectGroupDto> subjectGroupForsures;
	
	private List<SubjectGroupDto> subjectGroupMaybes;
	
	private List<Calendar> calendars;
	
}
