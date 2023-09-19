package com.project.common.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.project.common.utils.DateTimeUtils;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
@MappedSuperclass
public class AbstractEntity {
	
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = DateTimeUtils.DATE_TIME_FORMAT) 
	@DateTimeFormat(pattern = DateTimeUtils.DATE_TIME_FORMAT) 
	@Column(name = "created_at")
	protected LocalDateTime createdAt;
	
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = DateTimeUtils.DATE_TIME_FORMAT) 
	@DateTimeFormat(pattern = DateTimeUtils.DATE_TIME_FORMAT) 
	@Column(name = "updated_at")
	protected LocalDateTime updatedAt;

	@Column(name = "created_by")
	protected String createdBy;  

	@Column(name = "updated_by")
	protected String updatedBy;
}
