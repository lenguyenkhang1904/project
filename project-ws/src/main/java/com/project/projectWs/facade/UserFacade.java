package com.project.projectWs.facade;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Optional;

import javax.mail.MessagingException;

import com.project.projectWs.dto.RequestEmail;
import com.project.projectWs.dto.RequestLoginDto;
import com.project.projectWs.dto.RequestSaveUserDto;
import com.project.projectWs.dto.RequestUpdatePassword;
import com.project.projectWs.dto.RequestUpdateRegisterAndLearnerTypeUserDto;
import com.project.projectWs.dto.RequestUpdateUserDto;
import com.project.projectWs.dto.RequestUpdateUserRoleDto;
import com.project.projectWs.dto.RequestUpdateUserTypeTutorDto;
import com.project.projectWs.dto.ResponseLoginDto;
import com.project.projectWs.dto.ResponseUserDto;
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
	
	String forgotPassword(RequestEmail request)  throws UnsupportedEncodingException, MessagingException ;
	
	String changePassword(RequestUpdatePassword request);

	List<ResponseUserDto> findAll();
}
