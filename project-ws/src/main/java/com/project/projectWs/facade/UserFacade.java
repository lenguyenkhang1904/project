package com.project.projectWs.facade;

import java.util.Optional;

import com.project.projectWs.dto.RequestLoginDto;
import com.project.projectWs.dto.ResponseLoginDto;
import com.project.user.management.dto.UserDto;

public interface UserFacade {
	
	Optional<UserDto> findByPhonesOrEmailOrUsername(String parameter);
	
	ResponseLoginDto login(RequestLoginDto dto, String clientId, String secretId);
}
