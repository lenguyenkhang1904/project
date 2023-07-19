package com.project.common.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringHandleUtils {

	public static Long getNumberFromString(String s) {

		StringBuilder value = new StringBuilder();

		Pattern pattern = Pattern.compile(Regrex.DIGIT_MATCHER);
		Matcher matcher = pattern.matcher(s);

		while (matcher.find()) {
			value.append(matcher.group());
		}

		Long valueLong = Long.valueOf(s);

		return valueLong;
	}

}
