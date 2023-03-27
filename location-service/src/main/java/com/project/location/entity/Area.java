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
public class Area extends AbstractEntity {
	
	@Id
	private String id;
	
	@Column(name = "nation")
	protected String nation;
	
	@Column(name = "state")
	protected String state;	
	
	@Column(name = "provincial_level")
	protected String provincialLevel;
	
	@Column(name = "district")
	protected String district;
	
	@Column(name = "commune")
	protected String commune;
	
	@Column(name = "x_rel_coo")
	protected String xRelCoo;
	
	@Column(name = "y_rel_coo")
	protected String yRelCoo;

}

