package com.project.projectWs.dto;

import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;

import com.project.education.dto.SubjectGroupDto;
import com.project.location.dto.AreaDto;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class TutorForWebDto implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Long id;
	
	private String fullName;
	
	private String avatar;
	
	private String gender;
	
	private String voices;
	
	private List<AreaDto> relAreas = new LinkedList<>();
	
	private String advantageNote;
	
	private Double averageStarNumbers;
	
	private long tutorReviewNumbers; // đếm tổng các TutorReview
	
	private long jobNumbers; // : đếm tổng các Job
	
	private String hienDangLa;
	
	private List<SubjectGroupDto> subjectGroupMaybes = new LinkedList<>();
}
