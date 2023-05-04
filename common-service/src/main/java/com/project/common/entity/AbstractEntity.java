package com.project.common.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
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
	@CreatedDate 
	@DateTimeFormat(pattern = DateTimeUtils.DATE_TIME_FORMAT) 
	@Column(name = "created_at", nullable = false, updatable = false)
	protected LocalDateTime createdAt;
	
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = DateTimeUtils.DATE_TIME_FORMAT) 
	@LastModifiedDate 
	@DateTimeFormat(pattern = DateTimeUtils.DATE_TIME_FORMAT)
	@Column(name = "updated_at", nullable = false)
	protected LocalDateTime updatedAt;

	protected String createdBy;  

	protected String updatedBy;
}
