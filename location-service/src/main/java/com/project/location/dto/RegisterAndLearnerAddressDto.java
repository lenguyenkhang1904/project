package com.project.location.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RegisterAndLearnerAddressDto implements Serializable {

	private static final long serialVersionUID = 1L;

	private String addType;

	private String addNumber;

	private String addStreet;

	private String addNote;

	private String xCoo;

	private String yCoo;

	private String areaId;

	private String createdBy;

	private String registerAndLearnerId;

}
