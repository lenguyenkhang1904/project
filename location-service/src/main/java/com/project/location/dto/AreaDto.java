package com.project.location.dto;

import java.io.Serializable;

import lombok.Data;

@Data
public class AreaDto implements Serializable {


	private static final long serialVersionUID = 1L;

	private String id;

	protected String nation;

	protected String state;	

	protected String provincialLevel;

	protected String district;

	protected String commune;
	
	protected String xRelCoo;

	protected String yRelCoo;
}
