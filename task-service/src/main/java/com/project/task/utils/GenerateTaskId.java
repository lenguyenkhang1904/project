package com.project.task.utils;

import java.time.LocalDateTime;
import java.util.Date;

import com.project.common.utils.DateTimeUtils;

public class GenerateTaskId {
	
	private static String localDateTime = DateTimeUtils.toString(LocalDateTime.now());

	public static String generatorCode() {
		String[] sep = localDateTime.split("-");// tách các chuỗi ra mảng nhỏ
		// vd:2014-12-12 10:54:32
		String year = sep[0]; // 2014
		String month = sep[1];// 12
		String dateAndTime = sep[2];// 12 10:54:32
		String dateArrayString[] = dateAndTime.split(" ");// tách 12 10:54:32
		String date = dateArrayString[0];// 12
		int yearReal = Integer.valueOf(year);
		int standardFirstLetter = 67;// mã ancii nếu muốn lấy in thường mình trừ cho 32 là
		StringBuilder codeYear = new StringBuilder();
		int delta = yearReal - 2021;// độ lệch ngày
		codeYear = codeYear.append(String.valueOf((char) (standardFirstLetter + delta)));
		String codeMonth = String.valueOf(generateFromMonth(month));
		codeYear = codeYear.append(codeMonth.concat(date));
		return codeYear.toString();
	}

	public static int AutoGennerate(String day) {
		if (day == null) {
			return -1;
		} else {
			String[] sep = localDateTime.split("-");
			String year = sep[0];
			int yearSepNow = Integer.parseInt(year);
			String month = sep[1];
			int monthSepNow = Integer.parseInt(month);
			String dateAndTime = sep[2];
			String dateArrayString[] = dateAndTime.split(" ");
			String date = dateArrayString[0];
			int daySepNow = Integer.parseInt(date);// thoi gian hien tai
			String sepDay = day.substring(2, 4);
			int daySepEnd = Integer.parseInt(sepDay);
			String sepMonth = day.substring(1, 2);
			int monthSepEndString = (int) sepMonth.charAt(0);
			int monthSepEnd = Integer.parseInt(generateFromMonthReserve(monthSepEndString));
			String sepYear = day.substring(0, 1);// D
			char yearSep = sepYear.charAt(0);// lấy kí tự ANSSI
			// int yearOrigin = Calendar.getInstance().get(Calendar.YEAR);// lấy ngày làm
			// chuẩn
			int standardFirstLetter = 67;// mã ancii nếu muốn lấy in thường mình trừ cho 32 là
			int yearSepEnd = yearSep - standardFirstLetter + 2021;
			Date now = new Date(yearSepNow, monthSepNow, daySepNow);
			Date end = new Date(yearSepEnd, monthSepEnd, daySepEnd);
			if (now.compareTo(end) == 1)
				return 2;
			else if (now.compareTo(end) == 0)
				return 3;
			return 4;
		}
	}

	public static char generateFromMonth(String month) {
		char ma;
		switch (month) {
		case "01": {
			ma = 65;
			break;
		}
		case "02": {
			ma = 66;
			break;
		}
		case "03": {
			ma = 67;
			break;
		}
		case "04": {
			ma = 68;
			break;
		}
		case "05": {
			ma = 69;
			break;
		}
		case "06": {
			ma = 70;
			break;
		}
		case "07": {
			ma = 71;
			break;
		}
		case "08": {
			ma = 72;
			break;
		}
		case "09": {
			ma = 73;
			break;
		}
		case "10": {
			ma = 74;
			break;
		}
		case "11": {
			ma = 75;
			break;
		}
		case "12": {
			ma = 76;
			break;
		}
		default:
			ma = ' ';
			break;
		}
		return ma;
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
