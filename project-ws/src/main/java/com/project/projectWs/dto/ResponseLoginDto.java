package com.project.projectWs.dto;

import java.io.Serializable;
import java.util.List;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.project.common.utils.ObjectMapperUtils;
import com.project.user.management.dto.RoleDto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ResponseLoginDto implements Serializable  {
	
	private static final long serialVersionUID = 1L;
	
	private String username;
	
	private ResponseToken response;
	
	private List<RoleDto> roleDtos;

	public String toJson() throws JsonProcessingException {
		return ObjectMapperUtils.toJson(this);
	}
}
