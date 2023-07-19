package com.project.finance.dto;

import java.io.Serializable;

import com.project.common.utils.JobFinanceType;
import com.project.common.utils.UnitOfMoney;
import com.project.common.utils.WayOfPaying;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class JobFinanceDto implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String id;
	
	private JobFinanceType type;

	private WayOfPaying wayOfPaying;
	
	private String billImg ;
	
	private Integer amountOfMoney;
	
	private UnitOfMoney unitOfMoney;
	
	private String note;
	
	private String jobId;
	
	//STK (nếu có) - thường dùng cho yêu cầu hoàn phí
	private String accountNumber;
	
	private String accoundBank;
	
	private String accountName;
	
	private String createdBy;
}
