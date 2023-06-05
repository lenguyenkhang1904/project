package com.project.projectWs.facade.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.project.common.utils.ObjectMapperUtils;
import com.project.projectWs.Utils.GenerateToken;
import com.project.projectWs.dto.RequestLoginDto;
import com.project.projectWs.dto.RequestOauth;
import com.project.projectWs.dto.RequestSaveUserDto;
import com.project.projectWs.dto.RequestUpdateRegisterAndLearnerTypeUserDto;
import com.project.projectWs.dto.RequestUpdateUserDto;
import com.project.projectWs.dto.RequestUpdateUserRoleDto;
import com.project.projectWs.dto.RequestUpdateUserTypeTutorDto;
import com.project.projectWs.dto.ResponseLoginDto;
import com.project.projectWs.dto.ResponseToken;
import com.project.projectWs.facade.UserFacade;
import com.project.user.management.dto.RoleDto;
import com.project.user.management.dto.UserDto;
import com.project.user.management.service.RoleService;
import com.project.user.management.service.UserService;

@Service
public class UserFacadeImpl implements UserFacade {

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Autowired
	private GenerateToken generateToken;

	@Autowired
	private AuthenticationManager authenticationManager;

	@Autowired
	private UserService userService;

	@Autowired
	private RoleService roleService;

	@Override
	public Optional<UserDto> findByPhonesOrEmailOrUsername(String parameter) {
		return userService.findByPhonesOrEmailOrUsername(parameter);
	}

	@Override
	public ResponseLoginDto login(RequestLoginDto dto, String clientId, String secretId) {

		ResponseLoginDto response = new ResponseLoginDto();

		Authentication authentication = null;

		Optional<UserDto> userOpt = findByPhonesOrEmailOrUsername(dto.getParameter());

		if (!userOpt.isEmpty()) {

			UserDto userDto = userOpt.get();

			authentication = authenticationManager
					.authenticate(new UsernamePasswordAuthenticationToken(userDto.getUsername(), dto.getPassword()));

			SecurityContextHolder.getContext().setAuthentication(authentication);

			List<RoleDto> roleDto = roleService.findRolesByUserId(userDto.getId());

			if (roleDto.isEmpty()) {
				throw new UsernameNotFoundException("User does not have any roles ");
			}

			response.setUsername(userDto.getUsername());

			response.setRoleDtos(roleDto);

			RequestOauth requestOauth = buidRequestOauth(userDto.getUsername(), dto.getPassword(), clientId, secretId);

			ResponseToken responseToken = generateToken.generateToken(requestOauth);

			response.setResponse(responseToken);

			return response;

		}

		throw new UsernameNotFoundException("User does not exist in DB ");
	}

	private RequestOauth buidRequestOauth(String username, String password, String clientId, String secretId) {
		RequestOauth request = new RequestOauth();
		String url = ServletUriComponentsBuilder.fromCurrentContextPath().toUriString();
		request.setUsername(username);
		request.setClientId(clientId);
		request.setSecretId(secretId);
		request.setPassword(password);
		request.setUrlBase(secretId);
		request.setUrlBase(url);
		return request;
	}

	@Override
	public String saveUser(final RequestSaveUserDto request) {
		
		UserDto userDto = new UserDto();
		userDto = ObjectMapperUtils.map(request, UserDto.class);
		userDto.setCreatedBy(getCurrentUser());
		return userService.saveUser(userDto, passwordEncoder.encode(request.getPassword()), request.getRoleIds());
	}
	
	public String getCurrentUser() {
		return SecurityContextHolder.getContext().getAuthentication().getName();
	}

	@Override
	public String updateUser(RequestUpdateUserDto request) {
		UserDto userDto = new UserDto();
		userDto = ObjectMapperUtils.map(request, UserDto.class);
		userDto.setCreatedBy(getCurrentUser());
		return userService.updateUser(userDto);
	}

	@Override
	public String updateUserRole(RequestUpdateUserRoleDto request) {
		return userService.updateUserRole(request.getId(), request.getRoleIds(), getCurrentUser());
	}

	@Override
	public String updateUserTypeTutor(RequestUpdateUserTypeTutorDto request) {
		return userService.updateTypeTutor(request.getId(), request.getTutorId(), getCurrentUser());
	}

	@Override
	public String updateRegisterAndLearnerTypeUser(RequestUpdateRegisterAndLearnerTypeUserDto request) {
		return userService.updateTypeRegisterAndLearner(request.getId(), request.getRegisterAndLearnerId(), getCurrentUser());
	}

}
