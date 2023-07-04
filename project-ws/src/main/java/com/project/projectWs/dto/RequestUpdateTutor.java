package com.project.projectWs.dto;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.LinkedList;
import java.util.List;

import com.project.common.utils.Calendar;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RequestUpdateTutor implements Serializable {
	
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

	private String fbs;

	private String idCardNumber;

	private String idCardIssuedOn;

	private String tutorAddress;

	private String tutorAddressAreaId;

	private String xRelCoo;

	private String yRelCoo;
	
	private List<String> areaTutorId = new LinkedList<>();
	
	private List<String> tutorSubjectGroupMaybeIds = new LinkedList<>();
	
	private List<Calendar> calendars = new LinkedList<>();
	
	private LocalDateTime nowLevelUpdatedAt;
	
	private String nowLevel;
	
	private List<String> tutorSubjectGroupForSureIds = new LinkedList<>();

}
