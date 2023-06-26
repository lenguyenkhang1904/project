package com.project.location.dto;

import java.io.Serializable;

import com.project.location.entity.Area;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class TaskPlaceAddressDto implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String exactAddNumber;
	
	private String exactXCoo;
	
	private String exactYCoo;
	
	private String relAddNumber;
	
	private String relXCoo;
	
	private String relYCoo;
	
	private String addStreet;
	
	private String addStreetNote;
	
	private String areaId;
	
	private String createdBy;
	
	private String taskId;

}
