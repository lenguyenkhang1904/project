package com.project.user.management.service.impl;

import java.util.Arrays;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.DateConverter;
import com.project.common.utils.ObjectMapperUtils;
import com.project.user.management.dto.UserDto;
import com.project.user.management.entity.RegisterAndLearnerTypeUser;
import com.project.user.management.entity.TutorTypeUser;
import com.project.user.management.entity.User;
import com.project.user.management.entity.UserRole;
import com.project.user.management.repository.RegisterAndLearnerTypeUserRepository;
import com.project.user.management.repository.TutorTypeUserRepository;
import com.project.user.management.repository.UserRepository;
import com.project.user.management.repository.UserRoleRepository;
import com.project.user.management.service.UserService;
import com.project.user.management.utils.USERSTATUS;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private UserRoleRepository userRoleRepository;

	@Autowired
	private TutorTypeUserRepository tutorTypeUserRepository;

	@Autowired
	private RegisterAndLearnerTypeUserRepository registerAndLearnerTypeUserRepository;

	@Override
	public Optional<UserDto> findByPhonesOrEmailOrUsername(String parameter) {

		Optional<User> userOpt = userRepository.findUsernameByParameter(parameter);
		if (userOpt.isPresent()) {
			User user = userOpt.get();
			UserDto userDto = ObjectMapperUtils.map(user, UserDto.class);
			Optional<UserDto> userDtoOpt = Optional.of(userDto);
			return userDtoOpt;
		}
		return Optional.ofNullable(null);
	}

	@Override
	public String saveUser(final UserDto dto, final String password, final List<String> roleIds) {
		User user = new User();
		user = ObjectMapperUtils.map(dto, User.class);
		user.setCreatedBy(dto.getCreatedBy());
		user.setCreatedAt(DateConverter.convertDateToLocalDateTime(new Date()));
		user.setPassword(password);
		user.setStatus(USERSTATUS.ACTIVE.getName());
		user = userRepository.save(user);
		saveAllUserRole(roleIds, user);
		return user.getId();
	}

	private void saveAllUserRole(final List<String> roleIds, final User user) {
		List<UserRole> userRoles = new LinkedList<>();
		for (String roleId : roleIds) {
			UserRole userRole = new UserRole();
			userRole.setUser(user);
			userRole.setRoleId(roleId);
			userRoles.add(userRole);
		}
		userRoleRepository.saveAll(userRoles);
	}

	@Override
	public String updateUser(final UserDto userDto) {
		Optional<User> userOpt = userRepository.findById(userDto.getId());
		if (userOpt.isPresent()) {
			User user = userOpt.get();
			user.setUpdatedAt(DateConverter.convertDateToLocalDateTime(new Date()));
			user.setUpdatedBy(userDto.getCreatedBy());
			return userRepository.save(user).getId();
		}
		return null;
	}

	@Override
	@Transactional
	public String updateUserRole(final String id, final List<String> roleIds, final String currentUser) {
		Optional<User> userOpt = userRepository.findById(id);
		if (userOpt.isPresent()) {
			User user = userOpt.get();
			user.setUpdatedAt(DateConverter.convertDateToLocalDateTime(new Date()));
			user.setUpdatedBy(currentUser);
			user = userRepository.save(user);
			userRoleRepository.deleteByUserId(user.getId());
			saveAllUserRole(roleIds, user);
			return user.getId();
		}
		return null;
	}

	@Override
	@Transactional
	public String updateTypeTutor(String id, Long tutorId, String currentUser) {
		Optional<User> userOpt = userRepository.findById(id);
		if (userOpt.isPresent()) {
			User user = userOpt.get();
			user.setUpdatedAt(DateConverter.convertDateToLocalDateTime(new Date()));
			user.setUpdatedBy(currentUser);
			user = userRepository.save(user);
			tutorTypeUserRepository.deleteByUserId(user.getId());
			TutorTypeUser tutorTypeUser = new TutorTypeUser();
			tutorTypeUser.setUser(user);
			tutorTypeUser.setTutorId(tutorId);
			tutorTypeUserRepository.save(tutorTypeUser);
			return user.getId();
		}
		return null;
	}

	@Override
	@Transactional
	public String updateTypeRegisterAndLearner(String id, String registerAndLearnerId, String currentUser) {
		Optional<User> userOpt = userRepository.findById(id);
		if (userOpt.isPresent()) {
			User user = userOpt.get();
			user.setUpdatedAt(DateConverter.convertDateToLocalDateTime(new Date()));
			user.setUpdatedBy(currentUser);
			user = userRepository.save(user);
			registerAndLearnerTypeUserRepository.deleteByUserId(user.getId());
			RegisterAndLearnerTypeUser registerAndLearnerTypeUser = new RegisterAndLearnerTypeUser();
			registerAndLearnerTypeUser.setUser(user);
			registerAndLearnerTypeUser.setRegisterAndLearnerId(registerAndLearnerId);
			registerAndLearnerTypeUserRepository.save(registerAndLearnerTypeUser);
			return user.getId();
		}
		return null;
	}

	@Override
	public String save(UserDto dto) {
		User entity = ObjectMapperUtils.map(dto, User.class);
		return userRepository.save(entity).getId();
	}

	@Override
	public List<UserDto> findAll() {
		List<UserDto> userDtos = new LinkedList<>();
		userRepository.findAllUser().stream().forEach(item -> {
			Object[] objectList = (Object[]) item;
			UserDto dto = new UserDto();
			dto = convertObjectToUserDto(objectList, dto);
			
			if(dto.getStatus().equals(USERSTATUS.ACTIVE.getName())) {
				userDtos.add(dto);
			}

		});

		return userDtos;
	}

	private UserDto convertObjectToUserDto(Object[] objectList, UserDto dto) {
		dto.setId((String) objectList[0]);
		dto.setEmail((String) objectList[1]);
		dto.setUsername((String) objectList[2]);
		dto.setStatus((String) objectList[3]);
		dto.setPhone((String) objectList[4]);

		String roleId = !StringUtils.isEmpty((String) objectList[5]) ? (String) objectList[5] : "";

		List<String> roleIds = Arrays.asList(roleId.split(", "));
		dto.setRoles(roleIds);

		return dto;
	}

	@Override
	public void deleteById(String id) {
		Optional<User> userOpt = userRepository.findById(id);
		if (userOpt.isPresent()) { 
			User user = userOpt.get();
			user.setStatus(USERSTATUS.INACTIVE.getName());
			userRepository.save(user);
		}
	}

}
