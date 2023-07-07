package com.project.person.dto;

import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;

import com.project.common.dto.PersonInformationDto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RegisterAndLearnerDto extends PersonInformationDto implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String id;

	private String vocative;

	private String note;

	private String registerAndLearnerTag;

	private List<SchoolerDto> schoolerDtos = new LinkedList<>();

	private List<RegisterAndLearnerRelationshipDto> registerAndLearnerRelationships = new LinkedList<>();
	
	
}
