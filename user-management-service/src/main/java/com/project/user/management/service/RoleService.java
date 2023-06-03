package com.project.user.management.service;

import java.util.List;

import com.project.user.management.dto.RoleDto;

public interface RoleService {
	List<RoleDto> findRolesByUserId(String userId);
	

}
