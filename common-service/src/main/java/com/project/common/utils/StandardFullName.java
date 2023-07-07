package com.project.common.utils;

public class StandardFullName {
	public static String standardFullNameGenerator(String fullName) {
		String changeFullname = fullName;
		changeFullname = changeFullname.trim().toLowerCase();
		changeFullname = changeFullname.replace("\\s+", " ");
		String[] separateTemp = changeFullname.split(" ");
		changeFullname = "";
		for (int i = 0; i < separateTemp.length; i++) {
			changeFullname += String.valueOf(separateTemp[i].charAt(0)).toUpperCase() + separateTemp[i].substring(1);
			if (i < separateTemp.length - 1)
				changeFullname += " ";
		}
		return changeFullname;
	}
}
