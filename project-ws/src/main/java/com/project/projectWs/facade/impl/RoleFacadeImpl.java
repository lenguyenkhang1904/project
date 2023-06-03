package com.project.projectWs.facade.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.projectWs.facade.RoleFacade;
import com.project.user.management.dto.RoleDto;
import com.project.user.management.service.RoleService;

@Service
public class RoleFacadeImpl implements RoleFacade {
	
	@Autowired
	private RoleService roleService;

	@Override
	public List<RoleDto> findRolesByUserId(String userId) {
		return roleService.findRolesByUserId(userId);
	}

}
