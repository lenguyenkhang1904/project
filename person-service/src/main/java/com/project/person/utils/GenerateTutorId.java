package com.project.person.utils;

import java.time.LocalDateTime;
import java.util.Date;

import com.project.common.utils.DateTimeUtils;

public class GenerateTutorId {

	private static String localDateTime = DateTimeUtils.toString(LocalDateTime.now());

	public static String generatorCode() {
		String[] sep = localDateTime.split("-");// tách các chuỗi ra mảng nhỏ
		// vd:2014-12-12 10:54:32
		String year = sep[0]; // 2014
		String month = sep[1];// 12
		String dateAndTime = sep[2];// 12 10:54:32
		String dateArrayString[] = dateAndTime.split(" ");// tách 12 10:54:32
		String date = dateArrayString[0];// 12
		StringBuilder codeTutor = new StringBuilder();
		String twoEndNumOfYear = year.substring(2, 4);
		codeTutor = codeTutor.append(twoEndNumOfYear.concat(date.concat(month)));
		return codeTutor.toString();

	}

	public static int AutoGennerate(String day) {

		if (day == null) {
			return -1;
		} else {
			String[] sep = localDateTime.split("-");
			String year = sep[0];
			int YearNow = Integer.parseInt(year);
			String twoHeadNoofYear = year.substring(0, 2);
			String month = sep[1];
			int monthNow = Integer.parseInt(month);
			String dateAndTime = sep[2];
			String dateArrayString[] = dateAndTime.split(" ");
			String date = dateArrayString[0];
			int dayNow = Integer.parseInt(date);// thoi gian hien tai
			/// lấy ngày tháng truyền tham số
			int yearEnd = Integer.parseInt(twoHeadNoofYear.concat(day.substring(0, 2)));
			int monthEnd = Integer.parseInt(day.substring(4, 6));
			int dayEnd = Integer.parseInt(day.substring(2, 4));// thời gian lấy từ ngày cuối cùng trong DB
			Date now = new Date(YearNow, monthNow, dayNow);
			Date end = new Date(yearEnd, monthEnd, dayEnd);
			if (now.compareTo(end) == 1)
				return 2;
			else if (now.compareTo(end) == 0)
				return 3;
			return 4;
		}
	}

	public static String generateFromMonthReserve(int month) {
		String ma;
		switch (month) {
		case 65: {
			ma = "01";
			break;
		}
		case 66: {
			ma = "02";
			break;
		}
		case 67: {
			ma = "03";
			break;
		}
		case 68: {
			ma = "04";
			break;
		}
		case 69: {
			ma = "05";
			break;
		}
		case 70: {
			ma = "06";
			break;
		}
		case 71: {
			ma = "07";
			break;
		}
		case 72: {
			ma = "08";
			break;
		}
		case 73: {
			ma = "09";
			break;
		}
		case 74: {
			ma = "10";
			break;
		}
		case 75: {
			ma = "11";
			break;
		}
		case 76: {
			ma = "12";
			break;
		}
		default:
			ma = "";
			break;
		}
		return ma;
	}

	public static String generateResponsive(int no) {
		String ma;
		switch (no) {
		case 1: {
			ma = "01";
			break;
		}
		case 2: {
			ma = "02";
			break;
		}
		case 3: {
			ma = "03";
			break;
		}
		case 4: {
			ma = "04";
			break;
		}
		case 5: {
			ma = "05";
			break;
		}
		case 6: {
			ma = "06";
			break;
		}
		case 7: {
			ma = "07";
			break;
		}
		case 8: {
			ma = "08";
			break;
		}
		case 9: {
			ma = "09";
			break;
		}
		default:
			ma = String.valueOf(no);
			break;
		}
		return ma;
	}

	public static int generateResponsiveReserve(String no) {
		int ma;
		switch (no) {
		case "01": {
			ma = 1;
			break;
		}
		case "02": {
			ma = 2;
			break;
		}
		case "03": {
			ma = 3;
			break;
		}
		case "04": {
			ma = 4;
			break;
		}
		case "05": {
			ma = 5;
			break;
		}
		case "06": {
			ma = 6;
			break;
		}
		case "07": {
			ma = 7;
			break;
		}
		case "08": {
			ma = 8;
			break;
		}
		case "09": {
			ma = 9;
			break;
		}
		default:
			ma = Integer.parseInt(no);
			break;
		}
		return ma;
	}
}
