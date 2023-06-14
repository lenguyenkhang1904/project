package com.project.person.dto;

import java.io.Serializable;

import java.time.LocalDateTime;
import java.util.LinkedList;
import java.util.List;

import com.project.common.dto.PersonInformationDto;
import com.project.common.utils.Calendar;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class TutorDto extends PersonInformationDto implements Serializable {

	private static final long serialVersionUID = 1L;

	private Long id;

	private String tutorAddress;

	private String tutorAddressAreaId;

	private String xRelCoo;

	private String yRelCoo;

	private String placeOfBirth;

	private List<String> areaTutorIds = new LinkedList<>();

	private String expNotices;

	private Double averageStarNumbers;

	private String hienDangLa;

	private String nowLevel;

	private LocalDateTime nowLevelUpdatedAt;

	private String studyingInsitution;

	private String teachingInstitution;

	private String major;

	private String voices;

	private String tutorTag;

	private String tutorNotices;

	private String advantageNote;

	private List<String> tutorSubjectGroupMaybeIds = new LinkedList<>();

	private List<String> tutorSubjectGroupForSureIds = new LinkedList<>();

	private String subject;

	private String subjectClass;
	
	private List<Calendar> calendars = new LinkedList<>();

	@Override
	public String toString() {
		return "TutorDto [id=" + id + ", tutorAddress=" + tutorAddress + ", tutorAddressAreaId=" + tutorAddressAreaId
				+ ", xRelCoo=" + xRelCoo + ", yRelCoo=" + yRelCoo + ", placeOfBirth=" + placeOfBirth + ", areaTutorIds="
				+ areaTutorIds + ", expNotices=" + expNotices + ", averageStarNumbers=" + averageStarNumbers
				+ ", hienDangLa=" + hienDangLa + ", nowLevel=" + nowLevel + ", nowLevelUpdatedAt=" + nowLevelUpdatedAt
				+ ", studyingInsitution=" + studyingInsitution + ", teachingInstitution=" + teachingInstitution
				+ ", major=" + major + ", voices=" + voices + ", tutorTag=" + tutorTag + ", tutorNotices="
				+ tutorNotices + ", advantageNote=" + advantageNote + ", tutorSubjectGroupMaybeIds="
				+ tutorSubjectGroupMaybeIds + ", tutorSubjectGroupForSureIds=" + tutorSubjectGroupForSureIds
				+ ", subject=" + subject + ", subjectClass=" + subjectClass + ", calendars=" + calendars + "]";
	}
	
	
  
}
