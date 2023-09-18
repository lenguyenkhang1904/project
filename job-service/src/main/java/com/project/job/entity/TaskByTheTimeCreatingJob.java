package com.project.job.entity;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.project.common.utils.AmoutPerTime;
import com.project.common.utils.DateUtils;
import com.project.common.utils.PercentageOfMoney;
import com.project.common.utils.TypeOfFee;
import com.project.common.utils.UnitOfMoney;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "task_by_the_time_creating_job")
@Getter
@Setter
public class TaskByTheTimeCreatingJob {
	    
	@Id
	@GeneratedValue(generator = "uuid")
	@GenericGenerator(name = "uuid", strategy = "uuid2")
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
	
	@Enumerated(EnumType.STRING)
	private AmoutPerTime lessonNumberPerTime; // Số buổi tính theo
	
	private String freeTime;
	
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = DateUtils.DATE_FORMAT)
	@DateTimeFormat(pattern = DateUtils.DATE_FORMAT)
	private LocalDateTime startDate;
	
	// HỌC PHÍ
	private Integer taskFeeForStudent;

	private Integer taskFeeForGraduatedStudent;

	private Integer taskFeeForTeacher;
	
	
	private AmoutPerTime salaryPerTime;
	// PHÍ THU
	@Enumerated(EnumType.STRING)
	private TypeOfFee typeOfTaskFee;
	
	private Integer taskFee;
	
	@Enumerated(EnumType.STRING)
	private UnitOfMoney unitOfTaskFee;
	
	@Enumerated(EnumType.STRING)
	private PercentageOfMoney percentageOfTaskFeeInSalary;
	
	// PHÍ LIÊN KẾT (NẾU CÓ)
	@Enumerated(EnumType.STRING)
	private TypeOfFee typeOfAffiliateFee;
	
	private Integer affiliateFee;
	
	@Enumerated(EnumType.STRING)
	private UnitOfMoney unitOfAffiliateFee;
	
	@Enumerated(EnumType.STRING)
	private PercentageOfMoney percentageOfAffiliateFeeInTaskFee;

	private String taskPlaceAddresses;

	@OneToOne
	private Job job;
}
