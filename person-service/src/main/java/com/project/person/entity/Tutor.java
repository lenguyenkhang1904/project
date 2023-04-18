package com.project.person.entity;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.project.common.utils.DateTimeUtils;
import com.project.common.utils.DateUtils;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "tutor")
public class Tutor {
	
	@Id
	private Long id;
	
//	@Version 
//	protected Long version; //version có thể dùng để truyền vào cache
//	
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
//	
//	@CreatedBy 
//	protected String createdBy;  
//	
//	@LastModifiedBy
//	protected String updatedBy;

	@Column(name = "registered_status")
	private String registeredStatus;

	@Column(name = "full_name")
	private String fullName;
	
	@Column(name = "english_fullName")
	private String englishFullName;

	@Column(name = "gender")
	private String gender;
	
	@Column(name = "birth_year")
	private String birthYear;
	
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = DateUtils.DATE_FORMAT)																				// tượng thành Json để trả về																					// Clients
	@DateTimeFormat(pattern = DateUtils.DATE_FORMAT)
	@Column(name = "birth_date")
	private LocalDate birthDate;
	
	@Column(name = "phones")
	private String phones;
	
	@Column(name = "emails")
	private String emails;
	
	@Column(name = "zaloes")
	private String zaloes;
	
	@Column(name = "fbs")
	private String fbs;
	
	@Column(name = "id_card_number")
	private String idCardNumber;
	
	@Column(name = "id_card_issued_on")
	private String idCardIssuedOn;
	
	@Column(name = "tutor_address")
	private String tutorAddress;

	@Column(name = "tutor_address_area_id")
	private String tutorAddressAreaId;

//VỊ TRÍ TƯƠNG ĐỐI CỦA GIA SƯ - vị trí này được xác định theo: vị trí các lớp đã nhận (trọng số theo thời gian và số lớp), các lớp đã đăng ký (trọng số theo thời gian và số lớp), nơi ở hiện tại mà gia sư khai báo (trọng số theo thời gian và nơi ở là tạm trú hay thường trú) 
	@Column(name = "x_Rel_Coo")
	private String xRelCoo;

	@Column(name = "y_Rel_Coo")
	private String yRelCoo;
	
	@OneToMany(mappedBy = "tutor")
	private List<AreaTutor> areaTutor;
}
