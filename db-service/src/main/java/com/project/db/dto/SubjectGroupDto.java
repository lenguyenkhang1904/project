package com.project.db.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SubjectGroupDto implements Serializable  {
	
	private static final long serialVersionUID = 1L;
	
	private String id;
	
	private String name;
	
	private String shortName;

	@Override
	public String toString() {
		return "SubjectGroupDto [id=" + id + ", name=" + name + ", shortName=" + shortName + "]";
	}
	
	
}
