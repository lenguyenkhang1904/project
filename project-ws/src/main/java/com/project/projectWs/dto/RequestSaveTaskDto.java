package com.project.projectWs.dto;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import com.project.common.utils.AmoutPerTime;
import com.project.common.utils.PercentageOfMoney;
import com.project.common.utils.TaskSign;
import com.project.common.utils.TaskStatus;
import com.project.common.utils.TypeOfFee;
import com.project.common.utils.UnitOfMoney;
import com.project.location.dto.TaskPlaceAddressDto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RequestSaveTaskDto implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String taskPlaceType;

	private TaskStatus status;

	private String subjectNote;

	private Set<String> subjectGroupIds;

	private String requireNote;

	private Integer lessonNumber; // Số buổi

	private String lessonPeriodOfTime;

	private String freeTime;

	private LocalDateTime startDate;

	// HỌC PHÍ
	private Integer salaryForStudent;

	private Integer salaryForGraduatedStudent;

	private Integer salaryForTeacher;

	private UnitOfMoney unitOfSalary;

	private AmoutPerTime salaryPerTime;

	private TypeOfFee typeOfTaskFee;

	private Integer taskFeeForStudent;

	private Integer taskFeeForGraduatedStudent;

	private Integer taskFeeForTeacher;

	private UnitOfMoney unitOfTaskFee;

	private PercentageOfMoney percentageOfTaskFeeInSalary;

	// PHÍ LIÊN KẾT (NẾU CÓ)
	private TypeOfFee typeOfAffiliateFee;

	private Integer affiliateFee;

	private UnitOfMoney unitOfAffiliateFee;

	private PercentageOfMoney percentageOfAffiliateFeeInTaskFee;

	// Số học viên
	private String learnerNumber;

	private String learnerNote;

	private Set<String> genderRequired;

	private Set<TaskSign> taskSigns = new HashSet<>();

	private String voiceRequired;

	private String hienDangLaRequired;

	private Integer nowLevelRequired;
	
	private List<TaskPlaceAddressDto> taskPlaceAddressDtos = new LinkedList<>();
}
