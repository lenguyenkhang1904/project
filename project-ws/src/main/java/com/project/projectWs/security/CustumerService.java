package com.project.projectWs.security;

import java.util.LinkedList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.project.projectWs.dto.UserDetailsDto;
import com.project.projectWs.facade.RoleFacade;
import com.project.projectWs.facade.UserFacade;
import com.project.user.management.dto.RoleDto;
import com.project.user.management.dto.UserDto;

@Service(value = "CustumerService")
public class CustumerService implements UserDetailsService {

	@Autowired
	private UserFacade userFacade;

	@Autowired
	private RoleFacade roleFacade;

	@Override
	public UserDetails loadUserByUsername(String parameter) throws UsernameNotFoundException {

		Optional<UserDto> userDtoOpt = userFacade.findByPhonesOrEmailOrUsername(parameter);
		if (userDtoOpt.isEmpty()) {
			throw new UsernameNotFoundException("Username is invalid");
		}

		UserDto userDto = userDtoOpt.get();
		String userId = userDto.getId();

		return new UserDetailsDto(userDto.getUsername(), userDto.getPassword(), getAuthorities(userId));
	}

	private List<GrantedAuthority> getAuthorities(final String userId) {
		List<RoleDto> roleDtos = roleFacade.findRolesByUserId(userId);
		List<GrantedAuthority> grantedAuthorites = new LinkedList<>();
		for (RoleDto dto : roleDtos) {
			SimpleGrantedAuthority grantedAuthority = new SimpleGrantedAuthority(dto.getName());
			grantedAuthorites.add(grantedAuthority);
		}
		return grantedAuthorites;
	}

}
