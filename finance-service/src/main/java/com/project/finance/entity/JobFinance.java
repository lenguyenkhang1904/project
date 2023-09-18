package com.project.finance.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.project.common.entity.AbstractEntity;
import com.project.common.utils.JobFinanceType;
import com.project.common.utils.UnitOfMoney;
import com.project.common.utils.WayOfPaying;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "job_finance")
@Getter
@Setter
public class JobFinance extends AbstractEntity  {
	
	@Id
	@GeneratedValue(generator = "uuid")
	@GenericGenerator(name = "uuid", strategy = "uuid2")
	private String id;
	
	@Enumerated(EnumType.STRING)
	private JobFinanceType type;
	
	@Enumerated(EnumType.STRING)
	private WayOfPaying wayOfPaying;
	
	private String billImg ;
	
	private Integer amountOfMoney;
	
	@Enumerated(EnumType.STRING)
	private UnitOfMoney unitOfMoney;
	
	private String note;
	
	@Column(name = "job_id")
	private String jobId;
	
	private String accountNumber;
	
	private String accoundBank;
	
	private String accountName;
}
