package com.project.projectWs.dto;

import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;

import com.project.user.management.dto.RoleDto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ResponseUserDto implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String id;

	private String username;

	private String email;

	private String phone;

	private String status;

	List<RoleDto> roles = new LinkedList<>();

}
