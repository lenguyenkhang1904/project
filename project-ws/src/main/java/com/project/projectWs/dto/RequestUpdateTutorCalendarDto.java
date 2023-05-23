package com.project.projectWs.dto;

import java.io.Serializable;
import java.util.List;

import com.project.common.utils.Calendar;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class RequestUpdateTutorCalendarDto implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private Long id; 
	
	private List<Calendar> calendars;
}
