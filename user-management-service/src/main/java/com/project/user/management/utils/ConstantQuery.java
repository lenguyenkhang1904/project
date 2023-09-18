package com.project.user.management.utils;

public class ConstantQuery {
	public static final String DEFAULT_QUERY_PREFIX = "SELECT usr.id, usr.email, usr.username, usr.status, usr.phone, STRING_AGG(userole.role_id, ', ')"
			+ " AS user_role FROM user_application usr JOIN user_role userole ON usr.id = userole.user_id "
			+ "WHERE ";
	public static final String DEFAULT_QUERY_SUBFIX = " usr.status = 'Active' GROUP BY usr.id";
}
