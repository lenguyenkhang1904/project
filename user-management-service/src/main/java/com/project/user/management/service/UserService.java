package com.project.user.management.service;

import java.util.List;
import java.util.Optional;

import com.project.user.management.dto.UserDto;

public interface UserService {
	
	Optional<UserDto> findByPhonesOrEmailOrUsername(final String parameter);
	
	String saveUser(final UserDto dto, final String password, final List<String> roleIds);

	String updateUser(final UserDto userDto);

	String updateUserRole(final String id, final List<String> roleIds, final String currentUser);

	String updateTypeTutor(final String id, final Long tutorId, String currentUser);

	String updateTypeRegisterAndLearner(final String id, final String registerAndLearnerId, final String currentUser);


}
