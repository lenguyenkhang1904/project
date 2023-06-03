package com.project.user.management.service.impl;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.ObjectMapperUtils;
import com.project.user.management.dto.UserDto;
import com.project.user.management.entity.User;
import com.project.user.management.repository.UserRepository;
import com.project.user.management.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;

	@Override
	public Optional<UserDto> findByPhonesOrEmailOrUsername(String parameter) {

		Optional<User> userOpt = userRepository.findUsernameByParameter(parameter);
		if (!userOpt.isEmpty()) {
			User user = userOpt.get();
			UserDto userDto = ObjectMapperUtils.map(user, UserDto.class);
			Optional<UserDto> userDtoOpt = Optional.of(userDto);
			return userDtoOpt;
		}
		return Optional.ofNullable(null);
	}

}
