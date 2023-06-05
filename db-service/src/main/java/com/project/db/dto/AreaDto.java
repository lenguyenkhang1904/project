package com.project.db.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AreaDto {

	private String id;

	protected String nation;

	protected String state;	

	protected String provincialLevel;

	protected String district;

	protected String commune;

	protected String xRelCoo;

	protected String yRelCoo;
	
	
	@Override
	public String toString() {
		return "AreaDto [id=" + id + ", nation=" + nation + ", state=" + state + ", provincialLevel=" + provincialLevel
				+ ", district=" + district + ", commune=" + commune + ", xRelCoo=" + xRelCoo + ", yRelCoo=" + yRelCoo
				+ "]";
	}

}
