package com.project.projectWs.facade;

import java.util.List;

import com.project.user.management.dto.RoleDto;

public interface RoleFacade {
	
	List<RoleDto> findRolesByUserId(String userId);

}
