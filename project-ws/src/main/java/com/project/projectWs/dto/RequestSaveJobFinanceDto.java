package com.project.projectWs.dto;

import com.project.common.utils.JobFinanceType;
import com.project.common.utils.UnitOfMoney;
import com.project.common.utils.WayOfPaying;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class RequestSaveJobFinanceDto {

	private JobFinanceType type;

	private WayOfPaying wayOfPaying;
	
	private String billImg ;
	
	private Integer amountOfMoney;

	private UnitOfMoney unitOfMoney;
	
	private String note;

	private String jobId;

	private String accountNumber;
	
	private String accoundBank;
	
	private String accountName;
}
