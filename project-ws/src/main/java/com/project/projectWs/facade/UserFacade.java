package com.project.projectWs.facade;

import java.util.Optional;

import com.project.projectWs.dto.RequestLoginDto;
import com.project.projectWs.dto.RequestSaveUserDto;
import com.project.projectWs.dto.RequestUpdateRegisterAndLearnerTypeUserDto;
import com.project.projectWs.dto.RequestUpdateUserDto;
import com.project.projectWs.dto.RequestUpdateUserRoleDto;
import com.project.projectWs.dto.RequestUpdateUserTypeTutorDto;
import com.project.projectWs.dto.ResponseLoginDto;
import com.project.user.management.dto.UserDto;

public interface UserFacade {
	
	Optional<UserDto> findByPhonesOrEmailOrUsername(String parameter);
	
	ResponseLoginDto login(final RequestLoginDto dto, final  String clientId, final String secretId);
	
	String saveUser(final RequestSaveUserDto request);
	
	public String getCurrentUser();

	String updateUser(final RequestUpdateUserDto request);

	String updateUserRole(RequestUpdateUserRoleDto request);

	String updateUserTypeTutor(RequestUpdateUserTypeTutorDto request);

	String updateRegisterAndLearnerTypeUser(RequestUpdateRegisterAndLearnerTypeUserDto request);
}
