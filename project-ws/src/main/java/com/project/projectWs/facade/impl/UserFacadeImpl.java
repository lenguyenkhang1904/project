package com.project.projectWs.facade.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.project.projectWs.Utils.GenerateToken;
import com.project.projectWs.dto.RequestLoginDto;
import com.project.projectWs.dto.RequestOauth;
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

}
