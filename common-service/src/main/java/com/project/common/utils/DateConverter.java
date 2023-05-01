package com.project.common.utils;

import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;

public class DateConverter {
	
	public static LocalDate convertDateToLocalDate(Date date) {
		return date.toLocalDate();
	}
	
	public static LocalDateTime convertDateToLocalDateTime(Timestamp date) {
		return date.toInstant().atZone(ZoneId.systemDefault()).toLocalDateTime();
	}
}
