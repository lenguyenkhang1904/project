package com.project.user.management.utils;

public enum USERSTATUS {
	ACTIVE("Active"), INACTIVE("Inactive");

	private String name;

	USERSTATUS(String name) {
		this.name = name;
	}

	public String getName() {
		return this.name;
	}
}
