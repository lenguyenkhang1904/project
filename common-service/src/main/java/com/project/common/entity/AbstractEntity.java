package com.project.common.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import javax.persistence.Version;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.project.common.utils.DateTimeUtils;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
@MappedSuperclass //để các lớp con có thể kế thừa lại được các annotation của lớp này
//@EntityListeners(AuditingEntityListener.class) //để model này lấy được @EnableJpaAuditing đã Config ở bên JpaConfig.java để @CreatedDate,@LastModifiedDate có hiệu lực
public class AbstractEntity {
	
	@Version 
	protected Long version; 
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
//	@CreatedBy 
//	protected String createdBy;  
//	@LastModifiedBy
//	protected String updatedBy;
}
