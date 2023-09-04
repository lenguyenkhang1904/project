package com.project.projectWs.facade.impl;

import java.io.UnsupportedEncodingException;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.mail.MessagingException;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.project.common.utils.ObjectMapperUtils;
import com.project.projectWs.dto.RequestEmail;
import com.project.projectWs.dto.RequestLoginDto;
import com.project.projectWs.dto.RequestOauth;
import com.project.projectWs.dto.RequestSaveUserDto;
import com.project.projectWs.dto.RequestUpdatePassword;
import com.project.projectWs.dto.RequestUpdateRegisterAndLearnerTypeUserDto;
import com.project.projectWs.dto.RequestUpdateUserDto;
import com.project.projectWs.dto.RequestUpdateUserRoleDto;
import com.project.projectWs.dto.RequestUpdateUserTypeTutorDto;
import com.project.projectWs.dto.ResponseLoginDto;
import com.project.projectWs.dto.ResponseToken;
import com.project.projectWs.dto.ResponseUserDto;
import com.project.projectWs.facade.UserFacade;
import com.project.projectWs.mail.EmailUtils;
import com.project.projectWs.utils.GenerateAuthenticationalCode;
import com.project.projectWs.utils.GenerateToken;
import com.project.projectWs.utils.TemplateHTMLForEmail;
import com.project.user.management.dto.RoleDto;
import com.project.user.management.dto.UserDto;
import com.project.user.management.service.RoleService;
import com.project.user.management.service.UserService;

import lombok.extern.log4j.Log4j2;
import net.bytebuddy.implementation.bytecode.Throw;

@Service
@Log4j2
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

	@Autowired
	private GenerateAuthenticationalCode generateCode;

	@Autowired
	private EmailUtils emailUtils;

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
		return userService.updateTypeRegisterAndLearner(request.getId(), request.getRegisterAndLearnerId(),
				getCurrentUser());
	}

	@Override
	public String forgotPassword(RequestEmail request) throws UnsupportedEncodingException, MessagingException {
		Optional<UserDto> userOpt = findByPhonesOrEmailOrUsername(request.getEmail());
		System.out.println(request);
		if (!userOpt.isEmpty()) {
			UserDto userDto = userOpt.get();

			final String email = userDto.getEmail();
			final String username = userDto.getUsername();
			final String code = generateCode.generateCode(username);

			List<String> content = TemplateHTMLForEmail.templateGenearateTokenAuthentication(username, code);

			emailUtils.sendEmail(email, content.get(0), content.get(1));

			return "Token is sent to user:  " + username;
		}
		return StringUtils.EMPTY;
	}

	@Override
	public String changePassword(RequestUpdatePassword request) {
		final String tokenRequest = request.getToken();
		final Optional<UserDto> userOpt = findByPhonesOrEmailOrUsername(request.getUsername());
		final String tokenCache = generateCode.getOtp(request.getUsername());
		if (StringUtils.isEmpty(tokenCache)) {
			log.error("Invalid token");
			return "Invalid token";
		}
		if (tokenRequest.equals(tokenCache) && !userOpt.isEmpty()) {
			UserDto userDto = userOpt.get();
			String password = userDto.getPassword();

			if (passwordEncoder.matches(request.getPassword(), password)) {
				userDto.setPassword(passwordEncoder.encode(request.getPassword()));
				String userId = userService.save(userDto);
				if (!StringUtils.isEmpty(userId)) {
					generateCode.clearOTP(request.getUsername());
					return userId;
				}
			}

		}
		return StringUtils.EMPTY;
	}

	@Override
	public List<ResponseUserDto> findAll() {
		List<RoleDto> roles = roleService.findAll();
		List<UserDto> userDtos = userService.findAll();
		if (!CollectionUtils.isEmpty(userDtos)) {
			return userDtos.stream().map(item -> {
				ResponseUserDto res = new ResponseUserDto();

				res = ObjectMapperUtils.map(item, ResponseUserDto.class);

				List<String> roleIds = item.getRoles();

				roles.stream().filter(role -> roleIds.stream().anyMatch(id -> role.getId().equals(id)))
						.collect(Collectors.toList());
				res.setRoles(roles);
				return res;
			}).collect(Collectors.toList());
		}

		return new LinkedList<>();
	}

}
