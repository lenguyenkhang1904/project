package com.project.person.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.project.common.entity.PersonAbstractInformation;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "tutor")
public class Tutor extends PersonAbstractInformation {
	
	@Id
	private Long id;
	
	@Column(name = "tutor_address")
	private String tutorAddress;

	@Column(name = "tutor_address_area_id")
	private String tutorAddressAreaId;

	@Column(name = "place_of_birth")
	private String placeOfBirth;
	
//VỊ TRÍ TƯƠNG ĐỐI CỦA GIA SƯ - vị trí này được xác định theo: vị trí các lớp đã nhận (trọng số theo thời gian và số lớp), các lớp đã đăng ký (trọng số theo thời gian và số lớp), nơi ở hiện tại mà gia sư khai báo (trọng số theo thời gian và nơi ở là tạm trú hay thường trú) 
	@Column(name = "x_Rel_Coo")
	private String xRelCoo;

	@Column(name = "y_Rel_Coo")
	private String yRelCoo;
	
	@OneToMany(mappedBy = "tutor")
	private List<AreaTutor> areaTutor;
//MEDIA
	@Column(name = "avatar")
	private String avatar;
	
	@Column(name = "public_imgs")
	private String publicImgs;

	@Column(name = "private_imgs")
	private String privateImgs;

	@Column(name = "exp_notices")
	private String expNotices;
//
	@Column(name = "average_start_numbers")
	private Double averageStarNumbers;
}
