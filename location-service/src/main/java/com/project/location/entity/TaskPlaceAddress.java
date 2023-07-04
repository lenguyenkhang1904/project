package com.project.location.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.project.common.entity.AbstractEntity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "task_place_address")
public class TaskPlaceAddress extends AbstractEntity  {
	
	@Id
	@GeneratedValue(generator = "uuid")
	@GenericGenerator(name = "uuid", strategy = "uuid2")
	private String id;
	
	@Column(name = "exact_add_number")
	private String exactAddNumber;
	
	@Column(name = "exact_XCoo")
	private String exactXCoo;
	
	@Column(name = "exact_YCoo")
	private String exactYCoo;
	
	@Column(name = "rel_add_number")
	private String relAddNumber;
	
	@Column(name = "rel_XCoo")
	private String relXCoo;
	
	@Column(name = "rel_YCoo")
	private String relYCoo;
	
	@Column(name = "add_street")
	private String addStreet;
	
	@Column(name = "add_street_note")
	private String addStreetNote;
	
	@ManyToOne
	@JoinColumn(name = "area_id")
	private Area area;
	
	@Column(name = "task_id")
	private String taskId;
	

	@Override
	public String toString() {
		return area != null
				? exactAddNumber + "," + area.getCommune() + "," + area.getDistrict() + "," + area.getProvincialLevel() + "-"
						+ relAddNumber + "," + area.getCommune() + "," + area.getDistrict() + "," + area.getProvincialLevel()
				: "";
	}

	
	
}
