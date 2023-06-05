package com.project.projectWs.dto;

import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RequestUpdateUserDto implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String id;

	private String email;

	private String phone;

}
