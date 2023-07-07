package com.project.person.utils;

import java.util.LinkedList;
import java.util.List;

public class RemoveDuplicateElement {
	public static List<String> removeDuplicateElemet(List<String> string) {
		List<String> temp = new LinkedList<>();
		for (int i = 0; i < string.size(); i++) {
			boolean check = false;
			for (int j = 0; j < i; j++) {
				if (string.get(i).contains(string.get(j))) {
					check = true;
					break;
				}
			}
			if (check == false) {

				for (int j = i + 1; j < string.size(); j++) {
					if (string.get(i).contains(string.get(j))) {
						string.remove(j);
						j--;
					}
				}
				temp.add(string.get(i));
			}
		}
		return temp;
	}
}
