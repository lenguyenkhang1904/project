package com.project.projectWs.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RequestUpdatePassword implements Serializable  {

	private static final long serialVersionUID = 1L;
	
	private String username;
	
	private String token;
	
	private String password;
	
	private String confirmPassword;
}
