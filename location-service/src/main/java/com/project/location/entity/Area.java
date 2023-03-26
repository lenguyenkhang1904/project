package com.project.location.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "area")
@JsonIgnoreProperties(value={"hibernateLazyInitializer"}) 
public class Area  {
	@Id
	private String id;
	protected String nation;
	protected String state;	
	protected String provincialLevel;	
	protected String district;	
	protected String commune;	
	protected String xRelCoo;		
	protected String yRelCoo;

	//getter,setter kiểu fluentAPI

}

