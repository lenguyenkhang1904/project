package com.project.projectWs.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ResponseToken implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String access_token;
	
	private String refresh_token;
	
	private String token_type;
	
	private int expires_in;
	
	private String scope;

}
