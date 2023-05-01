package com.project.common.utils;

import java.text.Normalizer;
import java.text.Normalizer.Form;
import java.util.regex.Pattern;

public class HandleCharacter {
	
	public static String removeAccent(String s)
	{
		String temp = Normalizer.normalize(s, Form.NFD);
		Pattern pattern = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
		return pattern.matcher(temp).replaceAll("");
	}
	
	
	public static String  nomolizeForm(String s)
	{
		return removeAccent(s).toLowerCase().replace(" ","");
	}
	
	
	public static String concatIdArea(String nation,String state,String commune,String provincialLevel,String district) {
			
		if(nation.contains("Việt Nam"))
		{
			return (nomolizeForm(nation) +"-"+nomolizeForm(provincialLevel)+"-"+nomolizeForm(district)+"-"+nomolizeForm(commune)).replace(".","");
		}
		return (nomolizeForm(nation) +"-"+nomolizeForm(provincialLevel)+"-"+nomolizeForm(district)+"-"+nomolizeForm(commune)+"-"+nomolizeForm(state)).replace(".","");
		
	}
}
