package com.project.projectWs.dto;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import com.project.common.utils.Calendar;
import com.project.education.dto.SubjectGroupDto;
import com.project.job.dto.JobDto;
import com.project.location.dto.AreaDto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ResponseTutor implements Serializable {

	private static final long serialVersionUID = 1L;

	private Long id;

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

	private AreaDto tutorAddressAreaId;

	private String xRelCoo;

	private String yRelCoo;

	private String avatar;

	private List<AreaDto> areaTutorId;

	private String createdBy;

	private String updatedBy;

	private List<String> publicImgs = new LinkedList<>();

	private List<String> privateImgs = new LinkedList<>();

	private List<SubjectGroupDto> subjectGroupForsures = new LinkedList<>();

	private List<SubjectGroupDto> subjectGroupMaybes = new LinkedList<>();
	
	private List<SubjectGroupDto> subjectGroupfails = new LinkedList<>();

	private List<Calendar> calendars;

	private Double averageStarNumbers;
	
	private Double exp;
	
	private Integer successJobsNumbers;
	
	private Set<JobDto> jobDtos = new HashSet<>();

}
