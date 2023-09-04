package com.project.user.management.dto;

import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserDto implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String id;
	
	private String username;

	private String email;
	
	private String password;

	private String phone;
	
	private String createdBy;
	
	private String status;
	
	List<String> roles = new LinkedList<>();
}
