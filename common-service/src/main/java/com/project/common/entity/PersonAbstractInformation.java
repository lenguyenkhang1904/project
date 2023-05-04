package com.project.common.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.project.common.utils.DateUtils;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@MappedSuperclass
public class PersonAbstractInformation extends AbstractEntity{

	@Column(name = "registered_status")
	protected String registeredStatus;

	@Column(name = "full_name")
	protected String fullName;
	
	@Column(name = "english_fullName")
	protected String englishFullName;

	@Column(name = "gender")
	protected String gender;
	
	@Column(name = "birth_year")
	protected String birthYear;
	
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = DateUtils.DATE_FORMAT)																				// tượng thành Json để trả về																					// Clients
	@DateTimeFormat(pattern = DateUtils.DATE_FORMAT)
	@Column(name = "birth_date")
	protected LocalDate birthDate;
	
	@Column(name = "phones")
	protected String phones;
	
	@Column(name = "emails")
	protected String emails;
	
	@Column(name = "zaloes")
	protected String zaloes;
	
	@Column(name = "fbs")
	protected String fbs;
	
	@Column(name = "id_card_number")
	protected String idCardNumber;
	
	@Column(name = "id_card_issued_on")
	protected String idCardIssuedOn;
}
