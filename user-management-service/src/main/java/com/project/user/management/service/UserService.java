package com.project.user.management.service;

import java.util.Optional;

import com.project.user.management.dto.UserDto;

public interface UserService {
	
	Optional<UserDto> findByPhonesOrEmailOrUsername(final String parameter);
	

}
