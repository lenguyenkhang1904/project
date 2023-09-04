package com.project.job.dto;

import java.io.Serializable;
import java.time.LocalDateTime;

import javax.persistence.EnumType;
import javax.persistence.Enumerated;

import com.project.common.utils.AmoutPerTime;
import com.project.common.utils.PercentageOfMoney;
import com.project.common.utils.TypeOfFee;
import com.project.common.utils.UnitOfMoney;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class TaskByTheTimeCreatingDto implements Serializable {

	private static final long serialVersionUID = 1L;   
	
	private String id;
	
	private String taskId;
	// NƠI HỌC
	private String taskPlaceType;

	private String subjectApperance;

	private String subjectNote;

	private String requireApperance;

	private String requireNote;
	// THỜI GIAN
	private Integer lessonNumber; // Số buổi
	
	private String lessonPeriodOfTime;
	
	private String freeTime;
	
	private LocalDateTime startDate;
	
	// HỌC PHÍ
	private Integer taskFeeForStudent;

	private Integer taskFeeForGraduatedStudent;

	private Integer taskFeeForTeacher;

	
	private AmoutPerTime salaryPerTime;

	private TypeOfFee typeOfTaskFee;
	
	private UnitOfMoney unitOfTaskFee;
	
	private PercentageOfMoney percentageOfTaskFeeInSalary;
	
	private TypeOfFee typeOfAffiliateFee;
	
	private Integer affiliateFee;
	
	private UnitOfMoney unitOfAffiliateFee;
	
	private PercentageOfMoney percentageOfAffiliateFeeInTaskFee;

	private String taskPlaceAddresses;

}
