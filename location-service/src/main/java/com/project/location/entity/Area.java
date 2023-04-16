package com.project.location.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.project.common.entity.AbstractEntity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "area")
@JsonIgnoreProperties(value={"hibernateLazyInitializer"}) 
public class Area {
	
	@Id
	private String id;
	
	@Column(name = "nation")
	private String nation;
	
	@Column(name = "state")
	private String state;	
	
	@Column(name = "provincial_level")
	private String provincialLevel;
	
	@Column(name = "district")
	private String district;
	
	@Column(name = "commune")
	private String commune;
	
	@Column(name = "x_rel_coo")
	private String xRelCoo;
	
	@Column(name = "y_rel_coo")
	private String yRelCoo;

}

