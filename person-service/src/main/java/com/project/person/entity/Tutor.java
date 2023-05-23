package com.project.person.entity;

import java.time.LocalDateTime;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.project.common.entity.PersonAbstractInformation;
import com.project.common.utils.Calendar;
import com.project.common.utils.DateTimeUtils;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "tutor")
@EntityListeners(AuditingEntityListener.class)
public class Tutor extends PersonAbstractInformation {

	@Id
	private Long id;

	@Column(name = "tutor_address")
	private String tutorAddress;

	@Column(name = "tutor_address_area_id")
	private String tutorAddressAreaId;

	@Column(name = "place_of_birth")
	private String placeOfBirth;

	@Column(name = "x_Rel_Coo")
	private String xRelCoo;

	@Column(name = "y_Rel_Coo")
	private String yRelCoo;

	@OneToMany(mappedBy = "tutor")
	private List<AreaTutor> areaTutor;

	@Column(name = "avatar")
	private String avatar;

	@Column(name = "public_imgs")
	@ElementCollection
	private List<String> publicImgs;

	@Column(name = "private_imgs")
	@ElementCollection
	private List<String> privateImgs;

	@Column(name = "exp_notices")
	private String expNotices;

	@Column(name = "average_start_numbers")
	private Double averageStarNumbers;

	@Column(name = "hien_dang_la")
	private String hienDangLa;

	@Column(name = "now_level")
	private String nowLevel;

	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = DateTimeUtils.DATE_TIME_FORMAT)
	@LastModifiedDate
	@DateTimeFormat(pattern = DateTimeUtils.DATE_TIME_FORMAT)
	@Column(name = "now_level_updated_at")
	private LocalDateTime nowLevelUpdatedAt;

	@Column(name = "studying_insitution")
	private String studyingInsitution;

	@Column(name = "teaching_institution")
	private String teachingInstitution;

	@Column(name = "major")
	private String major;

	@Column(name = "voices")
	private String voices;

	@Column(name = "tutor_tag")
	private String tutorTag;

	@Column(name = "tutor_notices")
	private String tutorNotices;

	@Column(name = "advantage_note")
	private String advantageNote;
	
	@Column(name = "exp")
	private Double exp;
	
	@OneToMany(mappedBy = "tutor")
	private List<TutorSubjectGroupMaybe> tutorSubjectGroupMaybes;
	
	@OneToMany(mappedBy = "tutor")
	private List<TutorSubjectGroupForSure> tutorSubjectGroupForSures;
	
	@OneToMany(mappedBy = "tutor")
	private List<TutorSubjectGroupFails> tutorSubjectGroupFails;

	@Column(name = "subject")
	private String subject;
	
	@Column(name = "subject_class")
	private String subjectClass;
	
	@ElementCollection(targetClass = Calendar.class)
	@Enumerated(EnumType.STRING)
	private List<Calendar> calendars; 

}
