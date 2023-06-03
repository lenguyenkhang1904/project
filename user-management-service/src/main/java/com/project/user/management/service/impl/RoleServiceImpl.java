package com.project.user.management.service.impl;

import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.user.management.dto.RoleDto;
import com.project.user.management.repository.RoleRepository;
import com.project.user.management.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService {

	@Autowired
	private RoleRepository roleRepository;

	@Override
	public List<RoleDto> findRolesByUserId(String userId) {
		List<RoleDto> roleDtos = new LinkedList<>();
		List<Object> roleFrDb = roleRepository.findAllRoleByUsername(userId);
		roleFrDb.forEach(ob -> {
			Object[] listObject = (Object[]) ob;
			RoleDto roleDto = new RoleDto();
			roleDto.setId((String) listObject[0]);
			roleDto.setName((String) listObject[1]);
			roleDto.setDescription((String) listObject[2]);
			roleDtos.add(roleDto);

		});
		return roleDtos;
	}

}
