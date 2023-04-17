package com.project.projectWs.dto;

import java.io.Serializable;

import lombok.Data;

@Data
public class RequestFindingArea implements Serializable {
	
	private static final long serialVersionUID = 1L;

	private String nation;

	private String state;	

	private String provincialLevel;

	private String district;

	private String commune;

}
