package com.project.location.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AreaDto implements Serializable {

	private static final long serialVersionUID = 1L;

	private String id;

	private String nation;

	private String state;	

	private String provincialLevel;

	private String district;

	private String commune;
	
	private String xRelCoo;

	private String yRelCoo;
}
