package com.project.projectWs.dto;

import java.io.Serializable;
import java.util.List;

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

	
}
