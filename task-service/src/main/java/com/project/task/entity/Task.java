package com.project.task.entity;

import java.time.LocalDateTime;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.project.common.entity.AbstractEntity;
import com.project.common.utils.AmoutPerTime;
import com.project.common.utils.DateTimeUtils;
import com.project.common.utils.PercentageOfMoney;
import com.project.common.utils.TaskSign;
import com.project.common.utils.TaskStatus;
import com.project.common.utils.TypeOfFee;
import com.project.common.utils.UnitOfMoney;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "task")
public class Task extends AbstractEntity {

	@Id
	private String id;

	@Column(name = "status")
	@Enumerated(EnumType.STRING)
	private TaskStatus status;

	// NƠI HỌC
	@Column(name = "task_place_type")
	private String taskPlaceType;

	@OneToMany(mappedBy = "task")
	private Set<SubjectGroupTask> subjectGroupTask;

	@Column(name = "subject_note")
	private String subjectNote;

	@Column(name = "require_note")
	private String requireNote;
	// THỜI GIAN
	@Column(name = "lesson_number")
	private Integer lessonNumber; // Số buổi

	@Column(name = "lesson_period_of_time")
	private String lessonPeriodOfTime;

	@Column(name = "free_time")
	private String freeTime;

	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = DateTimeUtils.DATE_TIME_FORMAT)
	@DateTimeFormat(pattern = DateTimeUtils.DATE_TIME_FORMAT)
	@Column(name = "start_date")
	private LocalDateTime startDate;

	// HỌC PHÍ
	@Column(name = "salary_for_student")
	private Integer salaryForStudent;

	@Column(name = "salary_for_graduated_student")
	private Integer salaryForGraduatedStudent;

	@Column(name = "salary_for_teacher")
	private Integer salaryForTeacher;

	@Column(name = "unit_of_salary")
	@Enumerated(EnumType.STRING)
	private UnitOfMoney unitOfSalary;

	@Column(name = "salary_per_time")
	private AmoutPerTime salaryPerTime;

	// PHÍ THU
	@Column(name = "type_of_task_fee")
	@Enumerated(EnumType.STRING)
	private TypeOfFee typeOfTaskFee;

	@Column(name = "task_fee_for_student")
	private Integer taskFeeForStudent;

	@Column(name = "task_fee_for_graduated_student")
	private Integer taskFeeForGraduatedStudent;

	@Column(name = "task_fee_for_teacher")
	private Integer taskFeeForTeacher;

	@Column(name = "unit_of_task_fee")
	@Enumerated(EnumType.STRING)
	private UnitOfMoney unitOfTaskFee;

	@Column(name = "percentage_of_task_fee_in_salary")
	@Enumerated(EnumType.STRING)
	private PercentageOfMoney percentageOfTaskFeeInSalary;

	// PHÍ LIÊN KẾT (NẾU CÓ)
	@Column(name = "type_of_affiliate_fee")
	@Enumerated(EnumType.STRING)
	private TypeOfFee typeOfAffiliateFee;

	@Column(name = "affiliate_fee")
	private Integer affiliateFee;

	@Column(name = "unit_of_affiliate_fee")
	@Enumerated(EnumType.STRING)
	private UnitOfMoney unitOfAffiliateFee;

	@Column(name = "percentage_of_affiliate_fee_in_task_fee")
	@Enumerated(EnumType.STRING)
	private PercentageOfMoney percentageOfAffiliateFeeInTaskFee;

	// ĐÁNH DẤU (Nếu có)
	// contain many values
	@Column(name = "signs")
	private String signs; 

	// NGƯỜI ĐĂNG KÝ/HỌC VIÊN
	@OneToMany(mappedBy = "task")
	private Set<Registration> registrations;

	// ỨNG VIÊN ĐĂNG KÝ
	@OneToMany(mappedBy = "task")
	private Set<Application> applications;
	// GIAO JOB
//		@OneToMany(mappedBy = "task")
//		private Set<Job> jobs = new HashSet<>();

	@Column(name = "learner_number")
	private String learnerNumber;

	@Column(name = "learner_note")
	private String learnerNote;
 
	// contain many values
	@Column(name = "gender_required")
	private String genderRequired;

	@Column(name = "voice_required")
	private String voiceRequired;

	@Column(name = "dedicate_required")
	private String dedicateRequired;

	@Column(name = "now_level_required")
	private Integer nowLevelRequired;

}
