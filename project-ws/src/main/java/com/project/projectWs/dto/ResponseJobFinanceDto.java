package com.project.projectWs.dto;

import java.io.Serializable;

import com.project.common.utils.JobFinanceType;
import com.project.common.utils.UnitOfMoney;
import com.project.common.utils.WayOfPaying;
import com.project.job.dto.JobDto;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class ResponseJobFinanceDto implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String id;

	private JobFinanceType type;

	private WayOfPaying wayOfPaying;

	private String billImg;

	private Integer amountOfMoney;

	private UnitOfMoney unitOfMoney;

	private String note;

	private JobDto job;

	// STK (nếu có) - thường dùng cho yêu cầu hoàn phí
	private String accountNumber;

	private String accoundBank;

	private String accountName;

	private String createdBy;
}
