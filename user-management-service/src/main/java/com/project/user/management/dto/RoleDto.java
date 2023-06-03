package com.project.user.management.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RoleDto implements Serializable {

	private static final long serialVersionUID = 1L;

	private String id;

	private String name;

	private String description;
}
